import 'package:flutter/material.dart';

import '../../model/parish_model.dart';

interface class ParishState {
  ParishServiceStatus status;
  Parish? parish;
  FocusNode onFocus;
  bool isFocus;

  ParishState({
    required this.onFocus,
    this.isFocus = false,
    this.status = ParishServiceStatus.idle,
  });
}

enum ParishServiceStatus { loading, success, failure, idle }
