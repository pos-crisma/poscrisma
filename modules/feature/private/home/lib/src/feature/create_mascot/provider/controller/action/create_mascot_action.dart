// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../dto/create_mascot_response_dto.dart';

part 'create_mascot_action.freezed.dart';

@freezed
abstract class CreateMascotAction with _$CreateMascotAction {
  const factory CreateMascotAction.onAppear(BuildContext context) = _OnAppear;
  const factory CreateMascotAction.handlerTapped() = _HandlerTapped;
  const factory CreateMascotAction.genderTapped(UserGender gender) =
      _GenderTapped;
  const factory CreateMascotAction.service() = _Service;
  const factory CreateMascotAction.successService(CreateMascotResponseDTO dto) =
      _SuccessService;
  const factory CreateMascotAction.failureService(ErrorInfo errorInfo) =
      _FailureService;
  const factory CreateMascotAction.loadingService() = _LoadingService;
}
