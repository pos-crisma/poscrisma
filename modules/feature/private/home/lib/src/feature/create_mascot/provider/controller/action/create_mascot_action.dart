// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';

import '../../dto/create_mascot_response_dto.dart';
import '../state/create_mascot_state.dart';

sealed class CreateMascotAction {
  static CreateMascotAction onAppear() => _OnAppear();
  static CreateMascotAction handlerTapped() => _HandlerTapped();
  static CreateMascotAction genderTapped(UserGender gender) =>
      _GenderTapped(gender: gender);
  static CreateMascotAction service() => _Service();
  static CreateMascotAction successService(CreateMascotResponseDTO dto) =>
      _SuccessService(dto: dto);
  static CreateMascotAction failureService(ErrorInfo errorInfo) =>
      _FailureService(errorInfo: errorInfo);
  static CreateMascotAction loadingService() => _LoadingService();

  T fold<T>(
    T Function(_OnAppear action) onAppear,
    T Function(_HandlerTapped action) handlerTapped,
    T Function(_GenderTapped action) genderTapped,
    T Function(_Service action) service,
    T Function(_SuccessService action) success,
    T Function(_FailureService action) failure,
    T Function(_LoadingService action) loading,
  ) =>
      switch (this) {
        _OnAppear action => onAppear(action),
        _HandlerTapped action => handlerTapped(action),
        _GenderTapped action => genderTapped(action),
        _Service action => service(action),
        _SuccessService action => success(action),
        _FailureService action => failure(action),
        _LoadingService action => loading(action),
      };
}

class _OnAppear extends CreateMascotAction {}

class _GenderTapped extends CreateMascotAction {
  final UserGender gender;

  _GenderTapped({required this.gender});
}

class _HandlerTapped extends CreateMascotAction {}

class _Service extends CreateMascotAction {}

class _SuccessService extends CreateMascotAction {
  final CreateMascotResponseDTO dto;

  _SuccessService({required this.dto});
}

class _FailureService extends CreateMascotAction {
  final ErrorInfo errorInfo;

  _FailureService({required this.errorInfo});
}

class _LoadingService extends CreateMascotAction {}
