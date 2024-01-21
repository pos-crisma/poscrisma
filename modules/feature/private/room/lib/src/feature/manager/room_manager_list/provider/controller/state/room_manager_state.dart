import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class RoomManagerState {
  late BuildContext context;

  TextEditingController filterRoomController = TextEditingController(text: "");
  FocusNode filterRoomFocus = FocusNode();

  List<Room>? rooms;
  List<Room>? filterRooms;

  ErrorInfo? info;

  bool isLoading;

  RoomManagerState({
    this.isLoading = false,
  });
}
