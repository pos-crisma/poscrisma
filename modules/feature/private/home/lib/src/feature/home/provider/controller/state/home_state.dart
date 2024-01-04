import 'package:store/store.dart';

interface class HomeState {
  HomeServiceStatus status;
  ProfileDTO? user;
  Version? version;

  bool internetCheck;

  HomeState({
    this.status = HomeServiceStatus.idle,
    this.internetCheck = false,
  });
}

enum HomeServiceStatus { loading, success, failure, idle }
