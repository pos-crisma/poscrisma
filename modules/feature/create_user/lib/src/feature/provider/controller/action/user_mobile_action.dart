// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';

import '../../dto/create_user_response_dto.dart';
import '../../model/user_type.dart';

sealed class UserMobileAction {
  static UserMobileAction onAppear(
          String parishId, String spenderId, UserType type) =>
      _OnAppear(parishId: parishId, spenderId: spenderId, type: type);
  static UserMobileAction handlerTapped() => _HandlerTapped();
  static UserMobileAction backTapped() => _BackTapped();
  static UserMobileAction service() => _Service();
  static UserMobileAction successService(
          CreateUserResponseDTO createUserResponseDTO) =>
      _SuccessService(createUserResponseDTO: createUserResponseDTO);
  static UserMobileAction failureService(ErrorInfo errorInfo) =>
      _FailureService(errorInfo: errorInfo);
  static UserMobileAction loadingService() => _LoadingService();

  T fold<T>(
    T Function(_OnAppear action) onAppear,
    T Function(_HandlerTapped action) handlerTapped,
    T Function(_BackTapped action) backTapped,
    T Function(_Service action) service,
    T Function(_SuccessService action) success,
    T Function(_FailureService action) failure,
    T Function(_LoadingService action) loading,
  ) =>
      switch (this) {
        _OnAppear action => onAppear(action),
        _HandlerTapped action => handlerTapped(action),
        _BackTapped action => backTapped(action),
        _Service action => service(action),
        _SuccessService action => success(action),
        _FailureService action => failure(action),
        _LoadingService action => loading(action),
      };
}

class _OnAppear extends UserMobileAction {
  final UserType type;
  final String parishId;
  final String spenderId;

  _OnAppear({
    required this.type,
    required this.parishId,
    required this.spenderId,
  });
}

class _HandlerTapped extends UserMobileAction {}

class _BackTapped extends UserMobileAction {}

class _Service extends UserMobileAction {}

class _SuccessService extends UserMobileAction {
  final CreateUserResponseDTO createUserResponseDTO;

  _SuccessService({required this.createUserResponseDTO});
}

class _FailureService extends UserMobileAction {
  final ErrorInfo errorInfo;

  _FailureService({required this.errorInfo});
}

class _LoadingService extends UserMobileAction {}
