// ignore_for_file: library_private_types_in_public_api

sealed class InviteAction {
  static InviteAction buttonTapped() => _ButtonTapped();
  static InviteAction subtract() => _InviteService();
  static InviteAction multiplay() => _SuccessInviteService();
  static InviteAction failureInviteService() => _FailureInviteService();

  T fold<T>(
    T Function(_ButtonTapped action) buttonTapped,
    T Function(_InviteService action) inviteService,
    T Function(_SuccessInviteService action) successInviteService,
    T Function(_FailureInviteService action) failureInviteService,
  ) =>
      switch (this) {
        _ButtonTapped action => buttonTapped(action),
        _InviteService action => inviteService(action),
        _SuccessInviteService action => successInviteService(action),
        _FailureInviteService action => failureInviteService(action),
      };
}

class _ButtonTapped extends InviteAction {}

class _InviteService extends InviteAction {}

class _SuccessInviteService extends InviteAction {}

class _FailureInviteService extends InviteAction {}
