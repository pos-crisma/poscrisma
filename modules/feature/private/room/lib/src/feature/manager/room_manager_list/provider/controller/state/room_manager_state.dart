import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class RoomManagerState {
  late BuildContext context;

  RoomSettingResponseDTO? response;
  ErrorInfo? info;

  bool isLoading;

  RoomManagerState({
    this.isLoading = false,
  });
}
