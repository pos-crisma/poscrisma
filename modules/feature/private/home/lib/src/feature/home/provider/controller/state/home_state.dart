import 'package:store/store.dart';

interface class HomeState {
  HomeServiceStatus status;
  ProfileDTO? user;

  HomeState({
    this.status = HomeServiceStatus.idle,
  });
}

enum HomeServiceStatus { loading, success, failure, idle }
