// ignore_for_file: library_private_types_in_public_api

sealed class UserMobileAction {
  static UserMobileAction nicknameButtonTapped({String nickname = ""}) =>
      _NicknameButtonTapped(nickname: nickname);
  static UserMobileAction nameButtonTapped({String name = ""}) =>
      _NameButtonTapped(name: name);
  static UserMobileAction emailButtonTapped({String email = ""}) =>
      _EmailButtonTapped(email: email);
  static UserMobileAction phoneButtonTapped({String phone = ""}) =>
      _PhoneButtonTapped(phone: phone);
  static UserMobileAction medicalRecordsButtonTapped(
          {String medicalRecords = ""}) =>
      _MedicalRecordsButtonTapped(medicalRecords: medicalRecords);

  T fold<T>(
    T Function(_NicknameButtonTapped action) nicknameButtonTapped,
    T Function(_NameButtonTapped action) nameButtonTapped,
    T Function(_EmailButtonTapped action) emailButtonTapped,
    T Function(_PhoneButtonTapped action) phoneButtonTapped,
    T Function(_MedicalRecordsButtonTapped action) medicalRecordsButtonTapped,
  ) =>
      switch (this) {
        _NicknameButtonTapped action => nicknameButtonTapped(action),
        _NameButtonTapped action => nameButtonTapped(action),
        _EmailButtonTapped action => emailButtonTapped(action),
        _PhoneButtonTapped action => phoneButtonTapped(action),
        _MedicalRecordsButtonTapped action =>
          medicalRecordsButtonTapped(action),
      };
}

class _NicknameButtonTapped extends UserMobileAction {
  final String nickname;

  _NicknameButtonTapped({
    required this.nickname,
  });
}

class _NameButtonTapped extends UserMobileAction {
  final String name;

  _NameButtonTapped({
    required this.name,
  });
}

class _EmailButtonTapped extends UserMobileAction {
  final String email;

  _EmailButtonTapped({
    required this.email,
  });
}

class _PhoneButtonTapped extends UserMobileAction {
  final String phone;

  _PhoneButtonTapped({
    required this.phone,
  });
}

class _MedicalRecordsButtonTapped extends UserMobileAction {
  final String medicalRecords;

  _MedicalRecordsButtonTapped({
    required this.medicalRecords,
  });
}
