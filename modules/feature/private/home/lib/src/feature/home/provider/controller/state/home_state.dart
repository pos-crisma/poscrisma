import 'package:core/core.dart';
import 'package:store/store.dart';

interface class HomeState {
  HomeServiceStatus status;
  ProfileDTO? user;
  Version? version;

  bool internetCheck;

  InternetStatus internetStatus;

  HomeState({
    this.status = HomeServiceStatus.idle,
    this.internetCheck = false,
    this.internetStatus = InternetStatus.disconnected,
  });
}

enum HomeServiceStatus { loading, success, failure, idle }
