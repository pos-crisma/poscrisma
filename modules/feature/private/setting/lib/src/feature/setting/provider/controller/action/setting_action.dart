import 'package:core/core.dart';

part 'setting_action.freezed.dart';

@freezed
abstract class SettingAction with _$SettingAction {
  const factory SettingAction.onAppear() = _OnAppearTapped;
  const factory SettingAction.logoutButtonTapped() = _LogoutButtonTapped;
}