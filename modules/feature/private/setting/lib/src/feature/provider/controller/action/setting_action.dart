// ignore_for_file: library_private_types_in_public_api

sealed class SettingAction {
  static SettingAction onAppear() => _OnAppearTapped();

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
      };
}

class _OnAppearTapped extends SettingAction {}
