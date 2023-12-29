// ignore_for_file: library_private_types_in_public_api

import 'package:authenticator/src/feature/provider/dto/auth_response_dto.dart';
import 'package:core/core.dart';

sealed class AuthAction {
  static AuthAction onAppear() => _OnAppear();
  static AuthAction backTapped() => _BackTapped();
  static AuthAction handlerTapped() => _HandlerTapped();
  static AuthAction service() => _Service();
  static AuthAction successService(AuthResponseDTO dto) =>
      _SuccessService(responseDTO: dto);
  static AuthAction failureService(ErrorInfo errorInfo) =>
      _FailureService(errorInfo: errorInfo);
  static AuthAction loadingService() => _LoadingService();

  T fold<T>(
    T Function(_OnAppear action) onAppear,
    T Function(_BackTapped action) backTapped,
    T Function(_HandlerTapped action) handlerTapped,
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

class _OnAppear extends AuthAction {}

class _HandlerTapped extends AuthAction {}

class _BackTapped extends AuthAction {}

class _Service extends AuthAction {}

class _SuccessService extends AuthAction {
  final AuthResponseDTO responseDTO;

  _SuccessService({required this.responseDTO});
}

class _FailureService extends AuthAction {
  final ErrorInfo errorInfo;

  _FailureService({required this.errorInfo});
}

class _LoadingService extends AuthAction {}
