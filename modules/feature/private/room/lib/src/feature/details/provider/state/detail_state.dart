import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class DetailState {
  late BuildContext context;
  Room room;
  bool isLoading = false;

  late ProfileDTO user;

  DetailState(this.room);
}
