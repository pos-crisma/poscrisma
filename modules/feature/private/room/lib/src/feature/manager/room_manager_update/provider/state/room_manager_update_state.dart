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

  TextEditingController nameController = TextEditingController(text: "");
  FocusNode nameFocus = FocusNode();
  TextEditingController blockController = TextEditingController(text: "");
  FocusNode blockFocus = FocusNode();
  TextEditingController bathroomController = TextEditingController(text: "");
  FocusNode bathroomFocus = FocusNode();
  TextEditingController singleBedController = TextEditingController(text: "");
  FocusNode singleBedFocus = FocusNode();
  TextEditingController doubleBedController = TextEditingController(text: "");
  FocusNode doubleBedFocus = FocusNode();
  TextEditingController supportedBedController =
      TextEditingController(text: "");
  FocusNode supportedBedFocus = FocusNode();
  TextEditingController couchBedController = TextEditingController(text: "");
  FocusNode couchBedFocus = FocusNode();
  TextEditingController observationController = TextEditingController(text: "");
  FocusNode observationFocus = FocusNode();
  TextEditingController imageController = TextEditingController(text: "");
  FocusNode imageFocus = FocusNode();

  List<String> urlImage = [];

  bool availability = false;
  bool minibar = false;
  bool air = false;

  RoomManagarUpdateState({
    required this.room,
    required this.context,
  });
}
