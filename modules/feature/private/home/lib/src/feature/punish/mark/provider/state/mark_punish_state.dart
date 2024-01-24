import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class MarkPunishState {
  final BuildContext context;
  bool isLoading = false;

  List<User>? user;
  List<User>? filterUser;

  List<String> punishUser = [];

  TextEditingController punishController = TextEditingController(text: "");
  FocusNode punishFocus = FocusNode();
  TextEditingController filterController = TextEditingController(text: "");
  FocusNode filterFocus = FocusNode();

  MarkPunishState({
    required this.context,
  });
}
