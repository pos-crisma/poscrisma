import '../model/profile.dart';

class ProfileStore {
  ProfileStore({ProfileDTO? user}) : _user = user;

  ProfileDTO? _user;

  ProfileDTO? get user => _user;
  set updateUser(ProfileDTO user) => _user = user;
}
