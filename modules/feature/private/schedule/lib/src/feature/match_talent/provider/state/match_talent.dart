import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class MatchTalentState {
  final BuildContext context;

  ProfileDTO? user;

  DocumentSnapshot<Schedule>? schedule;
  Schedule? data;

  Game? game;

  MatchTalentState({
    required this.context,
  });
}
