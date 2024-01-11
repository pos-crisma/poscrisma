// ignore_for_file: library_private_types_in_public_api

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../dto/create_family_response_dto.dart';
import '../state/create_family_state.dart';

part 'create_family_action.freezed.dart';

@freezed
abstract class CreateFamilyAction with _$CreateFamilyAction {
  const factory CreateFamilyAction.onAppear(BuildContext context) = _OnAppear;
  const factory CreateFamilyAction.buttonTapped() = _ButtonTapped;
  const factory CreateFamilyAction.familyService() = _FamilyService;
  const factory CreateFamilyAction.loadingFamilyService() =
      _LoadingFamilyService;
  const factory CreateFamilyAction.successFamilyService(
      CreateFamilyResponseDTO family) = _SuccessFamilyService;
  const factory CreateFamilyAction.failureFamilyService(ErrorInfo error) =
      _FailureFamilyService;
  const factory CreateFamilyAction.validator(
      String error, CreateFamilyTextFieldFailure failure) = _Validator;
}
