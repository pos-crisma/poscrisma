import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class RoomManagarDetailState {
  late BuildContext context;

  HostedUserDTO? hostedUserDTO;
  ErrorInfo? errorInfo;

  bool isLoading = false;
}
