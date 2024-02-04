import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class ResultState {
  final BuildContext context;

  ProfileDTO? user;

  List<DocumentSnapshot<GameResult>> listResult = [];
  List<DocumentSnapshot<GameResult>> filterResult = [];

  ResultState({
    required this.context,
  });
}
