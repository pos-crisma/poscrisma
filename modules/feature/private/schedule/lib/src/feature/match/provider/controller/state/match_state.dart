import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class MatchState {
  final BuildContext context;

  ProfileDTO? user;

  DocumentSnapshot<Schedule> schedule;
  Schedule? data;

  Game? game;

  MatchState({
    required this.context,
    required this.schedule,
  });
}
