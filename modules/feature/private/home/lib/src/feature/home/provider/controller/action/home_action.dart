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
  static HomeAction versionService() => _VersionService();
  static HomeAction versionUpdate(Version version) =>
      _VersionUpdate(version: version);

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
    T Function(_UserService action) userService,
    T Function(_LoadingUserService action) loadingUserService,
    T Function(_SuccessUserService action) successUserService,
    T Function(_FailureUserService action) failureUserService,
    T Function(_VersionService action) versionService,
    T Function(_VersionUpdate action) versionUpdate,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
        _UserService action => userService(action),
        _LoadingUserService action => loadingUserService(action),
        _SuccessUserService action => successUserService(action),
        _FailureUserService action => failureUserService(action),
        _VersionService action => versionService(action),
        _VersionUpdate action => versionUpdate(action),
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

class _VersionService extends HomeAction {}

class _VersionUpdate extends HomeAction {
  final Version version;

  _VersionUpdate({required this.version});
}
