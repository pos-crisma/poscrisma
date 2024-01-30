import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:schedule/src/feature/match/view/match_page.dart';
import 'package:store/store.dart';

import '../action/schedule_action.dart';
import '../state/schedule_state.dart';

class ScheduleReducer extends Reducer<ScheduleAction, ScheduleState> {
  ScheduleReducer(BuildContext context)
      : super(
          ScheduleState(
            context: context,
            controller: ScrollController(initialScrollOffset: 1),
          ),
        );

  @override
  Future<Effect> reduce(ScheduleAction action) async {
    return action.when(
      onAppear: _onAppear,
      service: _service,
      serviceByJudge: _serviceByJudge,
      serviceByDay: _serviceByDay,
      serviceByDayAndTimeOfDay: _serviceByDayAndTimeOfDay,
      loading: _loading,
      added: _added,
      modifier: _modifier,
      remove: _remove,
      failure: _failure,
      scrollListener: _scrollListener,
      buttonTapped: _buttonTapped,
    );
  }

  FutureOr<Effect> _onAppear() {
    final user = profileStore.user;
    state.user = profileStore.user;
    return Effect.runAndEmit(() async {
      if (user != null &&
          user.permissions != null &&
          user.permissions!.contains('manager_schedule')) {
        send(const ScheduleAction.service());
      } else if (user != null &&
          user.permissions != null &&
          user.permissions!.contains('game_judge')) {
        send(const ScheduleAction.serviceByJudge());
      } else if (user != null &&
          user.permissions != null &&
          user.permissions!.contains('game_view_day')) {
        send(const ScheduleAction.serviceByDay());
      }

      state.controller.addListener(
        () => send(const ScheduleAction.scrollListener()),
      );
    });
  }

  FutureOr<Effect> _service() {
    return Effect.run(() async {
      final result = ScheduleAPI.stream();

      result.listen((event) {
        final events = event.docChanges;

        for (var element in events) {
          if (element.type == DocumentChangeType.added) {
            send(ScheduleAction.added(element.doc));
          } else if (element.type == DocumentChangeType.modified) {
            send(ScheduleAction.modifier(element.doc));
          } else {
            send(ScheduleAction.remove(element.doc));
          }
        }
      });
    });
  }

  FutureOr<Effect> _serviceByJudge() {
    return Effect.run(() async {
      final profile = profileStore.user;

      if (profile != null) {
        final result = ScheduleAPI.streamByJudge(judgeId: profile.userId);

        result.listen((event) {
          final events = event.docChanges;

          for (var element in events) {
            if (element.type == DocumentChangeType.added) {
              send(ScheduleAction.added(element.doc));
            } else if (element.type == DocumentChangeType.modified) {
              send(ScheduleAction.modifier(element.doc));
            } else {
              send(ScheduleAction.remove(element.doc));
            }
          }
        });
      }
    });
  }

  FutureOr<Effect> _serviceByDay() {
    return Effect.run(() async {
      final result = ScheduleAPI.streamByDay(day: "");

      result.listen((event) {
        final events = event.docChanges;

        for (var element in events) {
          if (element.type == DocumentChangeType.added) {
            send(ScheduleAction.added(element.doc));
          } else if (element.type == DocumentChangeType.modified) {
            send(ScheduleAction.modifier(element.doc));
          } else {
            send(ScheduleAction.remove(element.doc));
          }
        }
      });
    });
  }

  FutureOr<Effect> _serviceByDayAndTimeOfDay() {
    return Effect.run(() async {
      final result = ScheduleAPI.streamByDayAndTimeOfDay(
        day: "",
        timeOfDay: "",
      );

      result.listen((event) {
        final events = event.docChanges;

        for (var element in events) {
          if (element.type == DocumentChangeType.added) {
            send(ScheduleAction.added(element.doc));
          } else if (element.type == DocumentChangeType.modified) {
            send(ScheduleAction.modifier(element.doc));
          } else {
            send(ScheduleAction.remove(element.doc));
          }
        }
      });
    });
  }

  FutureOr<Effect> _loading(bool isLoading) {
    return Effect.emit();
  }

  FutureOr<Effect> _added(DocumentSnapshot<Schedule> dto) {
    state.listSchedule.add(dto);

    // state.listSchedule.sort((a, b) => a.data()!.day!.compareTo(b.data()!.day!));

    return Effect.emit();
  }

  FutureOr<Effect> _modifier(DocumentSnapshot<Schedule> dto) {
    final index =
        state.listSchedule.indexWhere((element) => element.id == dto.id);
    state.listSchedule.removeWhere((element) => element.id == dto.id);

    state.listSchedule.insert(index, dto);

    // state.listSchedule.sort((a, b) => a.data()!.day!.compareTo(b.data()!.day!));

    return Effect.emit();
  }

  FutureOr<Effect> _remove(DocumentSnapshot<Schedule> dto) {
    state.listSchedule.removeWhere((element) => element.id == dto.id);

    // state.listSchedule.sort((a, b) => a.data()!.day!.compareTo(b.data()!.day!));

    return Effect.emit();
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {});
  }

  FutureOr<Effect> _scrollListener() {
    if (state.controller.offset >= 65) {
      state.isCenterTitle = true;
    } else {
      state.isCenterTitle = false;
    }

    return Effect.emit();
  }

  FutureOr<Effect> _buttonTapped(DocumentSnapshot<Schedule> schedule) {
    return Effect.run(() async {
      if (schedule != null) {
        showModalBottomSheet(
          context: state.context,
          barrierColor: Colors.transparent,
          useSafeArea: true,
          isScrollControlled: true,
          builder: (context) {
            return ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: MatchPage(schedule: schedule),
            );
          },
        );
      }
    });
  }
}
