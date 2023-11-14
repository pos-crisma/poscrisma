import 'package:core/core.dart';

import 'action/user_mobile_action.dart';
import 'state/user_mobile_state.dart';

class UserMobileReducer extends Reducer<UserMobileAction, UserMobileState> {
  UserMobileReducer() : super(UserMobileState(pageViewer: PageViewer.nickname));

  @override
  Future<Effect> reduce(UserMobileAction action) async {
    return action.fold(
      (action) => _nicknameButtonTapped(action.nickname),
      (action) => _nameButtonTapped(action.name),
      (action) => _emailButtonTapped(action.email),
      (action) => _phoneButtonTapped(action.phone),
      (action) => _medicalRecordsButtonTapped(action.medicalRecords),
    );
  }

  _nicknameButtonTapped(String nickname) {
    value.nickname = nickname;
    value.pageViewer = PageViewer.name;

    return Effect.none();
  }

  _nameButtonTapped(String name) {
    value.name = name;
    value.pageViewer = PageViewer.email;

    return Effect.none();
  }

  _phoneButtonTapped(String phone) {
    value.phone = phone;
    value.pageViewer = PageViewer.medicalRecords;

    return Effect.none();
  }

  _emailButtonTapped(String email) {
    value.email = email;
    value.pageViewer = PageViewer.phone;

    return Effect.none();
  }

  _medicalRecordsButtonTapped(String medicalRecords) {
    value.medicalRecords = medicalRecords;

    return Effect.none();
  }
}
