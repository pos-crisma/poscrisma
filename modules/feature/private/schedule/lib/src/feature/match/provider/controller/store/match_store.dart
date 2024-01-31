import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../action/match_action.dart';
import '../state/match_state.dart';

class MatchReducer extends Reducer<MatchAction, MatchState> {
  MatchReducer(BuildContext context, DocumentSnapshot<Schedule> schedule)
      : super(MatchState(
          context: context,
          schedule: schedule,
        ));

  @override
  Future<Effect> reduce(MatchAction action) async {
    return action.when(
      onAppear: () {
        state.user = profileStore.user;
        if (state.schedule.data() != null) {
          state.data = state.schedule.data()!;
        }

        return Effect.runAndEmit(() async {
          send(const MatchAction.service());
          send(const MatchAction.serviceGame());
        });
      },
      backButton: () {
        return Effect.run(() async {
          if (state.schedule.data() != null) {
            final compareData = state.schedule.data()!;

            if (state.data != null) {
              if (state.data!.scoreTeamA != compareData.scoreTeamA &&
                  state.data!.scoreTeamB != compareData.scoreTeamB) {
                if (state.data!.audit != null && state.data!.audit!.isEmpty) {
                  state.data = state.data!.copyWith(audit: []);
                }
                state.data!.audit!.add(Audit(
                  newScoreA: state.data!.scoreTeamA,
                  newScoreB: state.data!.scoreTeamB,
                  oldScoreA: compareData.scoreTeamA,
                  oldScoreB: compareData.scoreTeamB,
                  userId: state.user?.userId ?? "",
                  userName: state.user?.name ?? "",
                ));

                state.schedule.reference.update({
                  "scoreTeamA": state.data!.scoreTeamA,
                  "scoreTeamB": state.data!.scoreTeamB,
                  "audit": state.data!.audit!.map((x) => x.toJson())
                });
              } else if (state.data!.scoreTeamA != compareData.scoreTeamA) {
                if (state.data!.audit != null && state.data!.audit!.isEmpty) {
                  state.data = state.data!.copyWith(audit: []);
                }
                state.data!.audit!.add(Audit(
                  newScoreA: state.data!.scoreTeamA,
                  oldScoreA: compareData.scoreTeamA,
                  userId: state.user?.userId ?? "",
                  userName: state.user?.name ?? "",
                ));

                state.schedule.reference.update({
                  "scoreTeamA": state.data!.scoreTeamA,
                  "audit": state.data!.audit!.map((x) => x.toJson())
                });
              } else if (state.data!.scoreTeamB != compareData.scoreTeamB) {
                if (state.data!.audit != null && state.data!.audit!.isEmpty) {
                  state.data = state.data!.copyWith(audit: []);
                }
                state.data!.audit!.add(Audit(
                  newScoreB: state.data!.scoreTeamB,
                  oldScoreB: compareData.scoreTeamB,
                  userId: state.user?.userId ?? "",
                  userName: state.user?.name ?? "",
                ));
                state.schedule.reference.update({
                  "scoreTeamB": state.data!.scoreTeamB,
                  "audit": state.data!.audit!.map((x) => x.toJson())
                });
              }
            }
          }
        });
      },
      service: () {
        return Effect.run(() async {
          state.schedule.reference.snapshots().listen((event) {
            if (event.exists) {
              send(MatchAction.update(event));
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
        if (team == "scoreTeamA") {
          if (state.data != null &&
              state.data!.scoreTeamA != null &&
              state.data!.scoreTeamA! >= 0) {
            state.data = state.data
                ?.copyWith(scoreTeamA: (state.data?.scoreTeamA ?? 0) + 1);
          }
        }

        if (team == "scoreTeamB") {
          if (state.data != null &&
              state.data!.scoreTeamB != null &&
              state.data!.scoreTeamB! >= 0) {
            state.data = state.data
                ?.copyWith(scoreTeamB: (state.data?.scoreTeamB ?? 0) + 1);
          }
        }
        return Effect.emit();
      },
      minusTapped: (String team) {
        if (team == "scoreTeamA") {
          if (state.data != null &&
              state.data!.scoreTeamA != null &&
              state.data!.scoreTeamA! > 0) {
            state.data = state.data
                ?.copyWith(scoreTeamA: (state.data?.scoreTeamA ?? 0) - 1);
          }
        }

        if (team == "scoreTeamB") {
          if (state.data != null &&
              state.data!.scoreTeamB != null &&
              state.data!.scoreTeamB! > 0) {
            state.data = state.data
                ?.copyWith(scoreTeamB: (state.data?.scoreTeamB ?? 0) - 1);
          }
        }
        return Effect.emit();
      },
      serviceGame: () {
        return Effect.run(() async {
          if (state.data != null && state.data!.gameId != null) {
            final gameId = state.data!.gameId!;

            final resultStatus = await checkConnectivity();

            resultStatus
                ? await GameAPI.findGameByID(gameId).fold(
                    (success) => send(MatchAction.successGame(success)),
                    (_) => send(const MatchAction.offline()),
                  )
                : send(const MatchAction.offline());
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

                send(MatchAction.successGame(game));
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

              send(MatchAction.failure(error));
            }
          }
        });
      },
    );
  }
}
