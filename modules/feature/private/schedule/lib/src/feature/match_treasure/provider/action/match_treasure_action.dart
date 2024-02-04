import 'package:core/core.dart';
import 'package:store/store.dart';

part 'match_treasure_action.freezed.dart';

@freezed
abstract class MatchTreasureAction with _$MatchTreasureAction {
  const factory MatchTreasureAction.onAppear() = _OnAppear;

  const factory MatchTreasureAction.service() = _Service;

  const factory MatchTreasureAction.serviceGame() = _ServiceGame;

  const factory MatchTreasureAction.successGame(Game game) = _SuccessGame;

  const factory MatchTreasureAction.update(DocumentSnapshot<Schedule> schedule) =
      _Added;

  const factory MatchTreasureAction.offline() = _Offline;

  const factory MatchTreasureAction.failure(ErrorInfo error) = _Failure;

  const factory MatchTreasureAction.addedTapped(String team) = _AddedTapped;

  const factory MatchTreasureAction.minusTapped(String team) = _MinusTapped;

  const factory MatchTreasureAction.backButton() = _BackButton;
}
