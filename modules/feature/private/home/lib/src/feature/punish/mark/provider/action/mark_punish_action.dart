import 'package:core/core.dart';
import 'package:store/store.dart';

part 'mark_punish_action.freezed.dart';

@freezed
abstract class MarkPunishAction with _$MarkPunishAction {
  const factory MarkPunishAction.onAppear() = _OnAppearTapped;
  const factory MarkPunishAction.getUserService() = _UserService;
  const factory MarkPunishAction.loading(bool isLoading) = _LoadingUserService;
  const factory MarkPunishAction.success(ListUserDTO user) =
      _SuccessUserService;
  const factory MarkPunishAction.failure(ErrorInfo error) = _FailureUserService;
  const factory MarkPunishAction.markPunish(String id) = _MarkPunish;
  const factory MarkPunishAction.removePunish(String id) = _RemovePunish;
  const factory MarkPunishAction.filter(String text) = _Filter;
  const factory MarkPunishAction.finishPunish() = _FinishPunish;
}
