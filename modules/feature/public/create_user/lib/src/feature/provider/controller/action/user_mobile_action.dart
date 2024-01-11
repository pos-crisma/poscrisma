// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:create_user/src/feature/provider/dto/create_user_request_dto.dart';
import 'package:flutter/material.dart';

import '../../dto/create_user_response_dto.dart';
import '../../model/user_type.dart';

part 'user_mobile_action.freezed.dart';

@freezed
abstract class UserMobileAction with _$UserMobileAction {
  const factory UserMobileAction.onAppear(
    String parishId,
    String senderId,
    UserType type,
    String invite,
    BuildContext context,
  ) = _OnAppear;

  const factory UserMobileAction.handlerTapped(BuildContext context) =
      _HandlerTapped;
  const factory UserMobileAction.genderTapped(UserGender gender) =
      _GenderTapped;
  const factory UserMobileAction.backTapped() = _BackTapped;
  const factory UserMobileAction.service(BuildContext context) = _Service;
  const factory UserMobileAction.successService(
      CreateUserResponseDTO createUserResponseDTO) = _SuccessService;
  const factory UserMobileAction.failureService(
      ErrorInfo errorInfo, BuildContext context) = _FailureService;
  const factory UserMobileAction.loadingService() = _LoadingService;
}
