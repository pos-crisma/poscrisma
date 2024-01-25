import 'package:flutter/widgets.dart';
import 'package:store/store.dart';

interface class NursingState {
  final BuildContext context;
  bool isLoading = false;

  TextEditingController filterUserController = TextEditingController(text: "");
  FocusNode filterUserFocus = FocusNode();

  List<User>? listUsers;
  List<User>? filterUsers;

  NursingState({
    required this.context,
  });
}
