import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class TeamState {
  final BuildContext context;

  List<Team>? teams;
  List<Team>? filterTeams;
  ErrorInfo? info;

  TextEditingController filterController = TextEditingController(text: "");
  FocusNode filterFocus = FocusNode();

  bool isLoading = false;

  TeamState({
    required this.context,
  });
}
