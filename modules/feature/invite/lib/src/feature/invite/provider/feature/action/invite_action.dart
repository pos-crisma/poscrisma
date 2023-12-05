// ignore_for_file: library_private_types_in_public_api

sealed class InviteAction {
  static InviteAction onAppear() => _OnAppearTapped();
  static InviteAction buttonTapped() => _ButtonTapped();
  static InviteAction inviteService() => _InviteService();
  static InviteAction loadingInviteService() => _LoadingInviteService();
  static InviteAction successInviteService() => _SuccessInviteService();
  static InviteAction failureInviteService() => _FailureInviteService();

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
    T Function(_ButtonTapped action) buttonTapped,
    T Function(_InviteService action) inviteService,
    T Function(_LoadingInviteService action) loadingInviteService,
    T Function(_SuccessInviteService action) successInviteService,
    T Function(_FailureInviteService action) failureInviteService,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
        _ButtonTapped action => buttonTapped(action),
        _InviteService action => inviteService(action),
        _LoadingInviteService action => loadingInviteService(action),
        _SuccessInviteService action => successInviteService(action),
        _FailureInviteService action => failureInviteService(action),
      };
}

class _OnAppearTapped extends InviteAction {}

class _ButtonTapped extends InviteAction {}

class _InviteService extends InviteAction {}

class _LoadingInviteService extends InviteAction {}

class _SuccessInviteService extends InviteAction {}

class _FailureInviteService extends InviteAction {}
