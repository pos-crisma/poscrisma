import 'package:flutter/material.dart';

interface class AuthState {
  TextEditingController nicknameController;
  FocusNode nicknameFocus;
  TextEditingController passwordController;
  FocusNode passwordFocus;

  bool isLoading;

  AuthState({
    this.isLoading = false,
    required this.nicknameController,
    required this.nicknameFocus,
    required this.passwordController,
    required this.passwordFocus,
  });
}
