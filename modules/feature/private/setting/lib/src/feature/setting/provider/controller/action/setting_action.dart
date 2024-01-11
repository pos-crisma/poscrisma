import 'package:core/core.dart';
import 'package:flutter/material.dart';

part 'setting_action.freezed.dart';

@freezed
abstract class SettingAction with _$SettingAction {
  const factory SettingAction.onAppear(BuildContext context) = _OnAppearTapped;
  const factory SettingAction.logoutButtonTapped() = _LogoutButtonTapped;
}
