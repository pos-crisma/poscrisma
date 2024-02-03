import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store/store.dart';

import '../action/match_treasure.dart';
import '../state/match_treasure.dart';

class MatchTreasureReducer extends Reducer<MatchTreasureAction, MatchTreasureState> {
  MatchTreasureReducer(BuildContext context)
      : super(MatchTreasureState(context: context));

  @override
  Future<Effect> reduce(MatchTreasureAction action) async {
    return action.when(
      onAppear: () {
        state.user = profileStore.user;

        return Effect.runAndEmit(() async {
          send(const MatchTreasureAction.service());
          send(const MatchTreasureAction.serviceGame());
        });
      },
      backButton: () {
        return Effect.run(() async {
          HapticFeedback.heavyImpact();

          if (state.schedule?.data() != null) {
            final compareData = state.schedule?.data()!;

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

              state.schedule?.reference.update({
                "gameScore": state.data!.gameScore!.map((e) {
                  final auditScore = compareData?.gameScore!
                      .where((element) => element.teamId == e.teamId)
                      .toList();

                  e.audit!.add(
                    Audit(
                      newScore: e.score,
                      oldScore: auditScore?.first.score,
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
          // final result = await ScheduleAPI.getTreasure();

          // send(MatchTreasureAction.update(result));
        });
      },
      update: (schedule) {
        state.schedule = schedule;
        state.data = schedule.data();
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
                    (success) => send(MatchTreasureAction.successGame(success)),
                    (_) => send(const MatchTreasureAction.offline()),
                  )
                : send(const MatchTreasureAction.offline());
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

                send(MatchTreasureAction.successGame(game));
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

              send(MatchTreasureAction.failure(error));
            }
          }
        });
      },
    );
  }
}
