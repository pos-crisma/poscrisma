import 'package:flutter/material.dart';
import 'package:store/store.dart';

interface class HomeState {
  late BuildContext context;
  HomeServiceStatus status;

  ProfileDTO? user;
  Version? version;
  Lodgin? lodging;

  bool internetCheck;

  bool showUpdatedModal;

  HomeState({
    this.status = HomeServiceStatus.idle,
    this.internetCheck = false,
    this.showUpdatedModal = false,
  });
}

enum HomeServiceStatus { loading, success, failure, idle }
