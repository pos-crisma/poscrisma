import 'package:core/core.dart';
import 'package:store/store.dart';
part 'game_action.freezed.dart';

@freezed
abstract class GameAction with _$GameAction {
  const factory GameAction.onAppear() = _OnAppear;

  const factory GameAction.service() = _Service;

  const factory GameAction.scrollListener() = _ScrollListener;

  const factory GameAction.loading(bool isLoading) = _Loading;

  const factory GameAction.success(GameResponseDTO success) = _Success;

  const factory GameAction.failure(ErrorInfo error) = _Failure;

  const factory GameAction.buttonTapped(Game game) = _ButtonTapped;

  const factory GameAction.offlineService() = _OfflineService;

  const factory GameAction.filterByText(String text) = _FilterByText;
}
