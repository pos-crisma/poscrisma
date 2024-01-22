import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../enum/room_manager_update_input_type.dart';

interface class RoomManagarUpdateState {
  BuildContext context;

  TextEditingController filterUserController = TextEditingController(text: "");
  FocusNode filterUserFocus = FocusNode();

  Room room;
  bool isLoading = false;

  RoomManagerUpdateInputType? inputType;

  RoomManagarUpdateState({
    required this.room,
    required this.context,
  });
}
