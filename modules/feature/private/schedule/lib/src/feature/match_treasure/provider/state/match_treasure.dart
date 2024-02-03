import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class MatchTreasureState {
  final BuildContext context;

  ProfileDTO? user;

  DocumentSnapshot<Schedule>? schedule;
  Schedule? data;

  Game? game;

  MatchTreasureState({
    required this.context,
  });
}
