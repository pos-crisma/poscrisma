import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:schedule/src/feature/match/view/match_page.dart';
import 'package:store/store.dart';

import '../../../../match_all/view/match_all_page.dart';
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
    // final user = profileStore.user;
    state.user = profileStore.user;
    return Effect.runAndEmit(() async {
      send(const ScheduleAction.serviceByDayAndTimeOfDay());

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
        final now = DateTime.now();

        print(now);

        final String weekDay = now.weekday == DateTime.friday
            ? "Sexta-Feira"
            : now.weekday == DateTime.thursday
                ? "Quinta-Feira"
                : "Quarta-Feira";

        print("weekDay: $weekDay");

        String timeOfDay = "";
        if (now.hour >= 0 && now.hour < 12) {
          timeOfDay = "Manha";
        }
        if (now.hour >= 12 && now.hour < 19) {
          timeOfDay = "Tarde";
        } else {
          timeOfDay = "Noite";
        }

        print("hour: ${now.hour}");
        print("weekDay: $timeOfDay");

        final result = ScheduleAPI.streamByJudge(
          judgeId: profile.userId,
          day: weekDay,
          timeOfDay: timeOfDay,
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
      }
    });
  }

  FutureOr<Effect> _serviceByDay() {
    return Effect.run(() async {
      final now = DateTime.now();

      final String weekDay = now.weekday == DateTime.friday
          ? "Sexta-Feira"
          : now.weekday == DateTime.thursday
              ? "Quinta-Feira"
              : "Quarta-Feira";

      final result = ScheduleAPI.streamByDay(day: weekDay);

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
      final now = DateTime.now();

      final String weekDay = now.weekday == DateTime.friday
          ? "Sexta-Feira"
          : now.weekday == DateTime.thursday
              ? "Quinta-Feira"
              : "Quarta-Feira";

      String timeOfDay = "";
      if (now.hour >= 8 && now.hour < 14) {
        timeOfDay = "Manha";
      } else if (now.hour >= 14 && now.hour < 19) {
        timeOfDay = "Tarde";
      } else {
        timeOfDay = "Noite";
      }

      final result = ScheduleAPI.streamByDayAndTimeOfDay(
        day: weekDay,
        timeOfDay: timeOfDay,
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

    state.listSchedule.sort((a, b) {
      int priorityA = _getGameStatusPriority(a.data()!.gameStatus!);
      int priorityB = _getGameStatusPriority(b.data()!.gameStatus!);

      if (priorityA != priorityB) {
        return priorityA.compareTo(priorityB);
      }

      // Se os gameStatus são iguais, ordene pelo dia da semana
      int dayPriorityA = _getDayOfWeekPriority(a.data()!.day!);
      int dayPriorityB = _getDayOfWeekPriority(b.data()!.day!);

      if (dayPriorityA != dayPriorityB) {
        return dayPriorityA.compareTo(dayPriorityB);
      }

      // Se o dia da semana também é igual, ordene por manhã, tarde ou noite
      int timePriorityA = _getTimeOfDayPriority(a.data()!.timeOfDay!.name);
      int timePriorityB = _getTimeOfDayPriority(b.data()!.timeOfDay!.name);

      int roundPriorityA = a.data()!.numberRound!;
      int roundPriorityB = b.data()!.numberRound!;

      if (roundPriorityA != roundPriorityB) {
        return roundPriorityA.compareTo(roundPriorityB);
      }

      return timePriorityA.compareTo(timePriorityB);
    });

    return Effect.emit();
  }

  FutureOr<Effect> _modifier(DocumentSnapshot<Schedule> dto) {
    final index =
        state.listSchedule.indexWhere((element) => element.id == dto.id);
    state.listSchedule.removeWhere((element) => element.id == dto.id);

    state.listSchedule.insert(index, dto);

    state.listSchedule.sort((a, b) {
      int priorityA = _getGameStatusPriority(a.data()!.gameStatus!);
      int priorityB = _getGameStatusPriority(b.data()!.gameStatus!);

      if (priorityA != priorityB) {
        return priorityA.compareTo(priorityB);
      }

      // Se os gameStatus são iguais, ordene pelo dia da semana
      int dayPriorityA = _getDayOfWeekPriority(a.data()!.day!);
      int dayPriorityB = _getDayOfWeekPriority(b.data()!.day!);

      if (dayPriorityA != dayPriorityB) {
        return dayPriorityA.compareTo(dayPriorityB);
      }

      // Se o dia da semana também é igual, ordene por manhã, tarde ou noite
      int timePriorityA = _getTimeOfDayPriority(a.data()!.timeOfDay!.name);
      int timePriorityB = _getTimeOfDayPriority(b.data()!.timeOfDay!.name);

      int roundPriorityA = a.data()!.numberRound!;
      int roundPriorityB = b.data()!.numberRound!;

      if (roundPriorityA != roundPriorityB) {
        return roundPriorityA.compareTo(roundPriorityB);
      }

      return timePriorityA.compareTo(timePriorityB);
    });

    return Effect.emit();
  }

  FutureOr<Effect> _remove(DocumentSnapshot<Schedule> dto) {
    state.listSchedule.removeWhere((element) => element.id == dto.id);

    state.listSchedule.sort((a, b) {
      int priorityA = _getGameStatusPriority(a.data()!.gameStatus!);
      int priorityB = _getGameStatusPriority(b.data()!.gameStatus!);

      if (priorityA != priorityB) {
        return priorityA.compareTo(priorityB);
      }

      // Se os gameStatus são iguais, ordene pelo dia da semana
      int dayPriorityA = _getDayOfWeekPriority(a.data()!.day!);
      int dayPriorityB = _getDayOfWeekPriority(b.data()!.day!);

      if (dayPriorityA != dayPriorityB) {
        return dayPriorityA.compareTo(dayPriorityB);
      }

      // Se o dia da semana também é igual, ordene por manhã, tarde ou noite
      int timePriorityA = _getTimeOfDayPriority(a.data()!.timeOfDay!.name);
      int timePriorityB = _getTimeOfDayPriority(b.data()!.timeOfDay!.name);

      int roundPriorityA = a.data()!.numberRound!;
      int roundPriorityB = b.data()!.numberRound!;

      if (roundPriorityA != roundPriorityB) {
        return roundPriorityA.compareTo(roundPriorityB);
      }

      return timePriorityA.compareTo(timePriorityB);
    });

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
      final data = schedule.data();

      if (data != null) {
        if (data.gameType == GameType.one_vs_one) {
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
                child: MatchPage(
                  schedule: schedule,
                  showScore: state.user != null &&
                      state.user!.permissions != null &&
                      (state.user!.permissions!.contains("manager_schedule") ||
                          state.user!.permissions!.contains("game_judge")),
                ),
              );
            },
          );
        } else {
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
                child: MatchAllPage(
                  schedule: schedule,
                  showScore: state.user != null &&
                      state.user!.permissions != null &&
                      (state.user!.permissions!.contains("manager_schedule") ||
                          state.user!.permissions!.contains("game_judge")),
                ),
              );
            },
          );
        }
      }
    });
  }

  int _getGameStatusPriority(GameStatus gameStatus) {
    switch (gameStatus) {
      case GameStatus.live:
        return 1;
      case GameStatus.up_comming:
        return 2;
      case GameStatus.result:
        return 3;
    }
  }

  int _getDayOfWeekPriority(String dayOfWeek) {
    switch (dayOfWeek) {
      case 'Quarta-Feira':
        return 1;
      case 'Quinta-Feira':
        return 2;
      case 'Sexta-Feira':
        return 3;

      default:
        return 0;
    }
  }

  int _getTimeOfDayPriority(String timeOfDay) {
    switch (timeOfDay) {
      case 'Manha':
        return 1;
      case 'Tarde':
        return 2;
      case 'Noite':
        return 3;

      default:
        return 0;
    }
  }
}
