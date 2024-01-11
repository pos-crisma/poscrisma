import 'package:flutter/material.dart';

interface class InviteState {
  InviteServiceStatus status;
  TextEditingController textEditingController;
  FocusNode onFocus;
  bool isFocus;

  late BuildContext context;

  InviteState({
    required this.textEditingController,
    required this.onFocus,
    this.isFocus = false,
    this.status = InviteServiceStatus.idle,
  });
}

enum InviteServiceStatus { loading, success, failure, idle }
