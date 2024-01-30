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
        if (state.schedule.data() != null) {
          state.data = state.schedule.data()!;
        }

        return Effect.runAndEmit(() async {
          send(const MatchAction.service());
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
        return Effect.run(() async {
          if (team == "scoreTeamA") {
            if (state.data != null &&
                state.data!.scoreTeamA != null &&
                state.data!.scoreTeamA! >= 0) {
              state.schedule.reference.update({
                team: (state.data?.scoreTeamA ?? 0) + 1,
              });
            }
          }

          if (team == "scoreTeamB") {
            if (state.data != null &&
                state.data!.scoreTeamB != null &&
                state.data!.scoreTeamB! >= 0) {
              state.schedule.reference.update({
                team: (state.data?.scoreTeamB ?? 0) + 1,
              });
            }
          }
        });
      },
      minusTapped: (String team) {
        return Effect.run(() async {
          if (team == "scoreTeamA") {
            if (state.data != null &&
                state.data!.scoreTeamA != null &&
                state.data!.scoreTeamA! > 0) {
              state.schedule.reference.update({
                team: (state.data?.scoreTeamA ?? 0) - 1,
              });
            }
          }

          if (team == "scoreTeamB") {
            if (state.data != null &&
                state.data!.scoreTeamB != null &&
                state.data!.scoreTeamB! > 0) {
              state.schedule.reference.update({
                team: (state.data?.scoreTeamB ?? 0) - 1,
              });
            }
          }
        });
      },
    );
  }
}
