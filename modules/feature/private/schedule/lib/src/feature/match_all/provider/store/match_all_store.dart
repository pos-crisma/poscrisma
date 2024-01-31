import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store/store.dart';

import '../action/match_all_action.dart';
import '../state/match_all_state.dart';

class MatchAllReducer extends Reducer<MatchAllAction, MatchAllState> {
  MatchAllReducer(BuildContext context, DocumentSnapshot<Schedule> schedule)
      : super(MatchAllState(
          context: context,
          schedule: schedule,
        ));

  @override
  Future<Effect> reduce(MatchAllAction action) async {
    return action.when(
      onAppear: () {
        state.user = profileStore.user;
        if (state.schedule.data() != null) {
          state.data = state.schedule.data()!;
        }

        return Effect.runAndEmit(() async {
          send(const MatchAllAction.service());
          send(const MatchAllAction.serviceGame());
        });
      },
      backButton: () {
        return Effect.run(() async {
          HapticFeedback.heavyImpact();

          if (state.schedule.data() != null) {
            final compareData = state.schedule.data()!;

            if (state.data != null &&
                state.data!.gameScore != null &&
                state.data!.gameScore!.isNotEmpty) {
              //
              if (state.data!.gameScore!.first.audit != null &&
                  state.data!.gameScore!.first.audit!.isEmpty) {
                state.data!.gameScore!.first.audit = [];
              }
              if (state.data!.gameScore!.last.audit == null) {
                state.data!.gameScore!.last.audit = [];
              }

              state.schedule.reference.update({
                "gameScore": state.data!.gameScore!.map((e) {
                  final auditScore = compareData.gameScore!
                      .where((element) => element.teamId == e.teamId)
                      .toList();

                  e.audit!.add(
                    Audit(
                      newScore: e.score,
                      oldScore: auditScore.first.score,
                      userId: state.user?.userId ?? "",
                      userName: state.user?.name ?? "",
                    ),
                  );

                  return e.toJson();
                }).toList(),
              });
            }
          }
        });
      },
      service: () {
        return Effect.run(() async {
          state.schedule.reference.snapshots().listen((event) {
            if (event.exists) {
              send(MatchAllAction.update(event));
            }
          });
        });
      },
      update: (schedule) {
        if (schedule.data() != null) {
          state.data = schedule.data()!;
        }

        return Effect.emit();
      },
      failure: (error) {
        return Effect.emit();
      },
      addedTapped: (String team) {
        state.data!.gameScore = state.data!.gameScore!.map((element) {
          if (element.teamId == team) {
            HapticFeedback.selectionClick();
            element.score = element.score! + 1;
          }

          return element;
        }).toList();

        return Effect.emit();
      },
      minusTapped: (String team) {
        state.data!.gameScore = state.data!.gameScore!.map((element) {
          if (element.teamId == team) {
            HapticFeedback.selectionClick();
            if (element.score! > 0) {
              element.score = element.score! - 1;
            }
          }

          return element;
        }).toList();

        return Effect.emit();
      },
      serviceGame: () {
        return Effect.run(() async {
          if (state.data != null && state.data!.gameId != null) {
            final gameId = state.data!.gameId!;

            final resultStatus = await checkConnectivity();

            resultStatus
                ? await GameAPI.findGameByID(gameId).fold(
                    (success) => send(MatchAllAction.successGame(success)),
                    (_) => send(const MatchAllAction.offline()),
                  )
                : send(const MatchAllAction.offline());
          }
        });
      },
      successGame: (game) {
        state.game = game;
        return Effect.emit();
      },
      offline: () {
        return Effect.run(() async {
          if (state.data != null && state.data!.gameId != null) {
            final gameId = state.data!.gameId!;

            final value = await hiveStorage.get<String>("@games_$gameId");
            final resultStatus = await checkConnectivity();

            try {
              if (value != null) {
                final game = Game.fromRawJson(value);

                send(MatchAllAction.successGame(game));
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

              send(MatchAllAction.failure(error));
            }
          }
        });
      },
    );
  }
}
