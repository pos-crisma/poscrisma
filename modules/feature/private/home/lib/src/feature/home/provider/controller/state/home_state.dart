import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class HomeState {
  HomeServiceStatus status;

  BuildContext? context;
  ProfileDTO? user;
  Version? version;

  bool internetCheck;

  bool showUpdatedModal;

  HomeState({
    this.status = HomeServiceStatus.idle,
    this.internetCheck = false,
    this.showUpdatedModal = false,
  });
}

enum HomeServiceStatus { loading, success, failure, idle }
