import 'package:core/core.dart';
import 'package:store/store.dart';

part 'schedule_action.freezed.dart';

@freezed
abstract class ScheduleAction with _$ScheduleAction {
  const factory ScheduleAction.onAppear() = _OnAppear;
  const factory ScheduleAction.service() = _Service;
  const factory ScheduleAction.serviceByJudge() = _ServiceByJudge;
  const factory ScheduleAction.serviceByDay() = _ServiceByDay;
  const factory ScheduleAction.serviceByDayAndTimeOfDay() =
      _ServiceByDayAndTimeOfDay;
  const factory ScheduleAction.loading(bool isLoading) = _Loading;
  const factory ScheduleAction.added(DocumentSnapshot<Schedule> schedule) =
      _Added;
  const factory ScheduleAction.modifier(DocumentSnapshot<Schedule> schedule) =
      _Modifier;
  const factory ScheduleAction.remove(DocumentSnapshot<Schedule> schedule) =
      _Remove;
  const factory ScheduleAction.failure(ErrorInfo error) = _Failure;

  const factory ScheduleAction.scrollListener() = _ScrollListener;
  const factory ScheduleAction.buttonTapped(
      DocumentSnapshot<Schedule> schedule) = _ButtonTapped;
}
