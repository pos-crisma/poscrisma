// ignore_for_file: library_private_types_in_public_api

sealed class SettingAction {
  static SettingAction onAppear() => _OnAppearTapped();
  static SettingAction logoutButtonTapped() => _LogoutButtonTapped();

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
    T Function(_LogoutButtonTapped action) logoutButtonTapped,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
        _LogoutButtonTapped action => logoutButtonTapped(action),
      };
}

class _OnAppearTapped extends SettingAction {}

class _LogoutButtonTapped extends SettingAction {}
