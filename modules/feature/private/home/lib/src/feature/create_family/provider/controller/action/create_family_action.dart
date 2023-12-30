// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:home/src/feature/create_family/provider/dto/create_family_response_dto.dart';
import 'package:store/store.dart';

sealed class CreateFamilyAction {
  static CreateFamilyAction onAppear() => _OnAppear();
  static CreateFamilyAction buttonTapped() => _ButtonTapped();
  static CreateFamilyAction familyService() => _FamilyService();
  static CreateFamilyAction loadingFamilyService() => _LoadingFamilyService();
  static CreateFamilyAction successFamilyService(
          CreateFamilyResponseDTO family) =>
      _SuccessFamilyService(family: family);
  static CreateFamilyAction failureFamilyService(ErrorInfo error) =>
      _FailureFamilyService(error: error);
  static CreateFamilyAction userService() => _UserService();
  static CreateFamilyAction loadingUserService() => _LoadingUserService();
  static CreateFamilyAction successUserService(ProfileDTO user) =>
      _SuccessUserService(user: user);
  static CreateFamilyAction failureUserService(ErrorInfo error) =>
      _FailureUserService(error: error);

  T fold<T>(
    T Function(_OnAppear action) onAppear,
    T Function(_ButtonTapped action) buttonTapped,
    T Function(_FamilyService action) familyService,
    T Function(_LoadingFamilyService action) loadingFamilyService,
    T Function(_SuccessFamilyService action) successFamilyService,
    T Function(_FailureFamilyService action) failureFamilyService,
    T Function(_UserService action) userService,
    T Function(_LoadingUserService action) loadingUserService,
    T Function(_SuccessUserService action) successUserService,
    T Function(_FailureUserService action) failureUserService,
  ) =>
      switch (this) {
        _OnAppear action => onAppear(action),
        _ButtonTapped action => buttonTapped(action),
        _FamilyService action => familyService(action),
        _LoadingFamilyService action => loadingFamilyService(action),
        _SuccessFamilyService action => successFamilyService(action),
        _FailureFamilyService action => failureFamilyService(action),
        _UserService action => userService(action),
        _LoadingUserService action => loadingUserService(action),
        _SuccessUserService action => successUserService(action),
        _FailureUserService action => failureUserService(action),
      };
}

class _OnAppear extends CreateFamilyAction {}

class _ButtonTapped extends CreateFamilyAction {}

class _FamilyService extends CreateFamilyAction {}

class _LoadingFamilyService extends CreateFamilyAction {}

class _SuccessFamilyService extends CreateFamilyAction {
  final CreateFamilyResponseDTO family;

  _SuccessFamilyService({required this.family});
}

class _FailureFamilyService extends CreateFamilyAction {
  final ErrorInfo error;

  _FailureFamilyService({required this.error});
}

class _UserService extends CreateFamilyAction {}

class _LoadingUserService extends CreateFamilyAction {}

class _SuccessUserService extends CreateFamilyAction {
  final ProfileDTO user;

  _SuccessUserService({required this.user});
}

class _FailureUserService extends CreateFamilyAction {
  final ErrorInfo error;

  _FailureUserService({required this.error});
}
