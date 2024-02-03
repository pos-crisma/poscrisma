import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class ScheduleState {
  final BuildContext context;

  ScrollController controller;
  bool isCenterTitle;

  ProfileDTO? user;

  TextEditingController filterController = TextEditingController(text: "");
  FocusNode filterFocus = FocusNode();

  List<DocumentSnapshot<Schedule>> listSchedule = [];
  List<DocumentSnapshot<Schedule>> filterSchedule = [];

  ScheduleState({
    this.isCenterTitle = false,
    required this.context,
    required this.controller,
  });
}
