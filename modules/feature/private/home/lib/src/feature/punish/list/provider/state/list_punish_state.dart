import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class ListPunishState {
  final BuildContext context;
  bool isLoading = false;

  List<DocumentSnapshot<PunishDTO>> listPunish = [];

  ListPunishState({
    required this.context,
  });
}
