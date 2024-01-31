import 'package:core/core.dart';
import 'package:store/store.dart';

part 'team_action.freezed.dart';

@freezed
abstract class TeamAction with _$TeamAction {
  const factory TeamAction.onAppear() = _OnAppear;

  const factory TeamAction.service() = _Service;

  const factory TeamAction.loading(bool isLoading) = _Loading;

  const factory TeamAction.success(TeamResponseDto success) = _Success;

  const factory TeamAction.failure(ErrorInfo error) = _Failure;

  const factory TeamAction.buttonTapped(Team team) = _ButtonTapped;

  const factory TeamAction.offlineService() = _OfflineService;

  const factory TeamAction.filterByText(String text) = _FilterByText;
}
