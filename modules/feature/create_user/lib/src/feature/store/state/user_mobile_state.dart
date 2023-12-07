interface class UserMobileState {
  UserMobileState({this.pageViewer = PageViewer.nickname});

  PageViewer pageViewer;

  String? name;
  String? nickname;
  String? email;
  String? phone;
  String? medicalRecords;
}

enum PageViewer { nickname, name, email, phone, medicalRecords }
