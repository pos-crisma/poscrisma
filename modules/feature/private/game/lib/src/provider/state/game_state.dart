import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class GameState {
  final BuildContext context;

  List<Game>? games;
  List<Game>? filterGames;
  ErrorInfo? info;

  TextEditingController filterController = TextEditingController(text: "");
  FocusNode filterFocus = FocusNode();

  bool isLoading = false;

  GameState({
    required this.context,
  });
}

enum RoomAreaPage { all, type, search }
