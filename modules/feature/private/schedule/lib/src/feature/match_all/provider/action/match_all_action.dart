import 'package:core/core.dart';
import 'package:store/store.dart';

part 'match_all_action.freezed.dart';

@freezed
abstract class MatchAllAction with _$MatchAllAction {
  const factory MatchAllAction.onAppear() = _OnAppear;

  const factory MatchAllAction.service() = _Service;

  const factory MatchAllAction.serviceGame() = _ServiceGame;

  const factory MatchAllAction.successGame(Game game) = _SuccessGame;

  const factory MatchAllAction.update(DocumentSnapshot<Schedule> schedule) =
      _Added;

  const factory MatchAllAction.offline() = _Offline;

  const factory MatchAllAction.failure(ErrorInfo error) = _Failure;

  const factory MatchAllAction.addedTapped(String team) = _AddedTapped;

  const factory MatchAllAction.minusTapped(String team) = _MinusTapped;

  const factory MatchAllAction.backButton() = _BackButton;
}
