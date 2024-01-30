import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class ScheduleState {
  final BuildContext context;

  ScrollController controller;
  bool isCenterTitle;

  ProfileDTO? user;

  List<DocumentSnapshot<Schedule>> listSchedule = [];

  ScheduleState({
    this.isCenterTitle = false,
    required this.context,
    required this.controller,
  });
}
