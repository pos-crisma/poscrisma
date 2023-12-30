import 'package:flutter/material.dart';

interface class CreateFamilyState {
  CreateFamilyServiceStatus status;

  TextEditingController nameFamilyController;
  FocusNode nameFamilyFocus;
  TextEditingController yearFamilyController;
  FocusNode yearFamilyFocus;

  CreateFamilyState({
    this.status = CreateFamilyServiceStatus.idle,
    required this.nameFamilyController,
    required this.nameFamilyFocus,
    required this.yearFamilyController,
    required this.yearFamilyFocus,
  });
}

enum CreateFamilyServiceStatus { loading, success, failure, idle }
