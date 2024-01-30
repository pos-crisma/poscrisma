import 'package:core/core.dart';
import 'package:store/store.dart';

part 'list_punish_action.freezed.dart';

@freezed
abstract class ListPunishAction with _$ListPunishAction {
  const factory ListPunishAction.onAppear() = _OnAppearTapped;
  const factory ListPunishAction.getUserService() = _UserService;
  const factory ListPunishAction.loading(bool isLoading) = _LoadingUserService;
  const factory ListPunishAction.addedPunish(
      DocumentSnapshot<PunishDTO> punish) = _AddedPunish;
  const factory ListPunishAction.modifierPunish(
      DocumentSnapshot<PunishDTO> punish) = _ModifierPunish;
  const factory ListPunishAction.removePunish(
      DocumentSnapshot<PunishDTO> punish) = _RemovePunish;
  const factory ListPunishAction.failure(ErrorInfo error) = _FailureUserService;
  const factory ListPunishAction.markDone(DocumentSnapshot<PunishDTO> doc) =
      _MarkPunish;
}
