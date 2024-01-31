import 'package:core/core.dart';
import 'package:error/error.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../../team_detail/view/team_detail.dart';
import '../action/team_action.dart';
import '../state/team_state.dart';

class TeamReducer extends Reducer<TeamAction, TeamState> {
  TeamReducer(BuildContext context)
      : super(
          TeamState(context: context),
        );

  @override
  Future<Effect> reduce(TeamAction action) async => action.when(
        onAppear: () {
          return Effect.run(() async {
            send(const TeamAction.loading(true));
            send(const TeamAction.service());

            state.filterController.addListener(() {
              final text = state.filterController.text;

              send(TeamAction.filterByText(text));
            });
          });
        },
        service: () {
          return Effect.run(() async {
            final resultStatus = await checkConnectivity();

            return resultStatus
                ? await TeamAPI.get().fold(
                    (success) => send(TeamAction.success(success)),
                    (_) => send(const TeamAction.offlineService()),
                  )
                : await send(const TeamAction.offlineService());
          });
        },
        loading: (isLoading) {
          state.isLoading = isLoading;
          return Effect.emit();
        },
        success: (success) {
          state.teams = success.teams;
          state.filterTeams = success.teams;
          return Effect.send(const TeamAction.loading(false));
        },
        failure: (error) {
          return Effect.run(() async {
            send(const TeamAction.loading(false));
            showModalBottomSheet(
              context: state.context,
              builder: (context) {
                return ErrorPage(
                  title: error.response?.toString(),
                  content: error.error?.message.toString(),
                  backButton: () => Navigator.of(state.context).pop(),
                  onPress: null,
                  isShowButton: false,
                  enableColor: Colors.transparent,
                );
              },
            );
          });
        },
        buttonTapped: (team) {
          return Effect.run(() async {
            showModalBottomSheet(
              useSafeArea: true,
              isScrollControlled: true,
              context: state.context,
              builder: (context) {
                return TeamDetail(team: team);
              },
            );
          });
        },
        offlineService: () {
          return Effect.run(() async {
            final resultStatus = await checkConnectivity();
            final value = await hiveStorage.get<String>("@teams");

            try {
              if (value != null) {
                final success = TeamResponseDto.fromRawJson(value);

                send(TeamAction.success(success));
              }
            } catch (e) {
              final error = ErrorInfo(
                code: -1,
                response: "Tente novamente",
                error: ErrorData(
                  type: "Storage",
                  statusCode: -1,
                  message: resultStatus
                      ? "Problema no servidor, espere a equipe de TI responder"
                      : "Tente novamente mais tarde, quando sua conexão com a internet retornar",
                ),
              );

              send(TeamAction.failure(error));
            }
          });
        },
        filterByText: (text) {
          if (state.teams != null && text.isNotEmpty) {
            state.filterTeams = state.teams!
                .where(
                  (element) =>
                      element.teamName != null &&
                      removeDiacritics(element.teamName!.toLowerCase())
                          .contains(removeDiacritics(text.toLowerCase())),
                )
                .toList();
          } else {
            state.filterTeams = state.teams;
          }

          return Effect.emit();
        },
      );
}
