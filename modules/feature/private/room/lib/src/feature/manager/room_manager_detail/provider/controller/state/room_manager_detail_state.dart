import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class RoomManagarDetailState {
  late BuildContext context;

  TextEditingController filterUserController = TextEditingController(text: "");
  FocusNode filterUserFocus = FocusNode();

  Room room;

  ProfileDTO? user;

  List<HostedUser>? users;
  List<HostedUser>? filtersUsers;

  ErrorInfo? errorInfo;

  int selector;
  int selectorGender;

  bool isLoading = false;
  bool roomSettingExpansion = true;

  RoomManagarDetailState({
    required this.room,
    this.selector = 3,
    this.selectorGender = 1,
  });
}
