import 'package:flutter/material.dart';

interface class CreateFamilyState {
  late BuildContext context;

  CreateFamilyServiceStatus status;

  TextEditingController nameFamilyController;
  FocusNode nameFamilyFocus;
  TextEditingController yearFamilyController;
  FocusNode yearFamilyFocus;

  String errorMessage;
  CreateFamilyTextFieldFailure failure;

  CreateFamilyState({
    this.status = CreateFamilyServiceStatus.idle,
    required this.nameFamilyController,
    required this.nameFamilyFocus,
    required this.yearFamilyController,
    required this.yearFamilyFocus,
    this.errorMessage = "",
    this.failure = CreateFamilyTextFieldFailure.none,
  });
}

enum CreateFamilyTextFieldFailure {
  name,
  year,
  none,
}

enum CreateFamilyServiceStatus { loading, success, failure, idle }
