import '../model/user.dart';

class UserStore {
  UserStore({User? user}) : _user = user;

  User? _user;

  User? get user => _user;
  set updateUser(User user) => _user = user;
}
