import 'package:core/core.dart';
import 'package:store/store.dart';

part 'match_talent.freezed.dart';

@freezed
abstract class MatchTalentAction with _$MatchTalentAction {
  const factory MatchTalentAction.onAppear() = _OnAppear;

  const factory MatchTalentAction.service() = _Service;

  const factory MatchTalentAction.serviceGame() = _ServiceGame;

  const factory MatchTalentAction.successGame(Game game) = _SuccessGame;

  const factory MatchTalentAction.update(DocumentSnapshot<Schedule> schedule) =
      _Added;

  const factory MatchTalentAction.offline() = _Offline;

  const factory MatchTalentAction.failure(ErrorInfo error) = _Failure;

  const factory MatchTalentAction.addedTapped(String team) = _AddedTapped;

  const factory MatchTalentAction.minusTapped(String team) = _MinusTapped;

  const factory MatchTalentAction.backButton() = _BackButton;
}
