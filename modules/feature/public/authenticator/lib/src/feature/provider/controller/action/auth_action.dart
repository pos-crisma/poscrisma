// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../dto/auth_response_dto.dart';

part 'auth_action.freezed.dart';

@freezed
abstract class AuthAction with _$AuthAction {
  const factory AuthAction.onAppear(BuildContext context) = _OnAppear;
  const factory AuthAction.backTapped() = _BackTapped;
  const factory AuthAction.handlerTapped() = _HandlerTapped;
  const factory AuthAction.service() = _Service;
  const factory AuthAction.successService(AuthResponseDTO dto) =
      _SuccessService;
  const factory AuthAction.failureService(ErrorInfo errorInfo) =
      _FailureService;
  const factory AuthAction.loadingService() = _LoadingService;
  const factory AuthAction.moveToHome() = _MoveToHome;
}
