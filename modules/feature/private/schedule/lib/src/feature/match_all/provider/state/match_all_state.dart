import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class MatchAllState {
  final BuildContext context;

  ProfileDTO? user;

  DocumentSnapshot<Schedule> schedule;
  Schedule? data;

  Game? game;

  MatchAllState({
    required this.context,
    required this.schedule,
  });
}
