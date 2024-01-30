import 'package:core/core.dart';
import 'package:store/store.dart';

part 'match_action.freezed.dart';

@freezed
abstract class MatchAction with _$MatchAction {
  const factory MatchAction.onAppear() = _OnAppear;

  const factory MatchAction.service() = _Service;

  const factory MatchAction.update(DocumentSnapshot<Schedule> schedule) =
      _Added;

  const factory MatchAction.failure(ErrorInfo error) = _Failure;

  const factory MatchAction.addedTapped(String team) = _AddedTapped;

  const factory MatchAction.minusTapped(String team) = _MinusTapped;
}
