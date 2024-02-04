import 'package:core/core.dart';
import 'package:store/store.dart';

part 'result_action.freezed.dart';

@freezed
abstract class ResultAction with _$ResultAction {
  const factory ResultAction.onAppear() = _OnAppear;

  const factory ResultAction.service() = _Service;

  const factory ResultAction.added(DocumentSnapshot<GameResult> schedule) =
      _Added;
  const factory ResultAction.modifier(DocumentSnapshot<GameResult> schedule) =
      _Modifier;
  const factory ResultAction.remove(DocumentSnapshot<GameResult> schedule) =
      _Remove;
}
