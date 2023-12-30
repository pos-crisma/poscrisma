// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:store/store.dart';

sealed class HomeAction {
  static HomeAction onAppear() => _OnAppearTapped();
  static HomeAction userService() => _UserService();
  static HomeAction loadingUserService() => _LoadingUserService();
  static HomeAction successUserService(ProfileDTO user) =>
      _SuccessUserService(user: user);
  static HomeAction failureUserService(ErrorInfo error) =>
      _FailureUserService(error: error);

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
    T Function(_UserService action) userService,
    T Function(_LoadingUserService action) loadingUserService,
    T Function(_SuccessUserService action) successUserService,
    T Function(_FailureUserService action) failureUserService,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
        _UserService action => userService(action),
        _LoadingUserService action => loadingUserService(action),
        _SuccessUserService action => successUserService(action),
        _FailureUserService action => failureUserService(action),
      };
}

class _OnAppearTapped extends HomeAction {}

class _UserService extends HomeAction {}

class _LoadingUserService extends HomeAction {}

class _SuccessUserService extends HomeAction {
  final ProfileDTO user;

  _SuccessUserService({required this.user});
}

class _FailureUserService extends HomeAction {
  final ErrorInfo error;

  _FailureUserService({required this.error});
}
