import 'dart:convert';

class Hosted {
  final String? roomId;
  final DateTime? checkIn;
  final dynamic checkOut;
  final String? userId;
  final String? userName;
  final String? userType;
  final String? userGender;

  Hosted({
    this.roomId,
    this.checkIn,
    this.checkOut,
    this.userId,
    this.userName,
    this.userType,
    this.userGender,
  });

  Hosted copyWith({
    String? roomId,
    DateTime? checkIn,
    dynamic checkOut,
    String? userId,
    String? userName,
    String? userType,
    String? userGender,
  }) =>
      Hosted(
        roomId: roomId ?? this.roomId,
        checkIn: checkIn ?? this.checkIn,
        checkOut: checkOut ?? this.checkOut,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        userType: userType ?? this.userType,
        userGender: userGender ?? this.userGender,
      );

  factory Hosted.fromRawJson(String str) => Hosted.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Hosted.fromJson(Map<String, dynamic> json) => Hosted(
        roomId: json["roomId"],
        checkIn:
            json["checkIn"] == null ? null : DateTime.parse(json["checkIn"]),
        checkOut: json["checkOut"],
        userId: json["userId"],
        userName: json["userName"],
        userType: json["userType"],
        userGender: json["userGender"],
      );

  Map<String, dynamic> toJson() => {
        "roomId": roomId,
        "checkIn": checkIn?.toIso8601String(),
        "checkOut": checkOut,
        "userId": userId,
        "userName": userName,
        "userType": userType,
        "userGender": userGender,
      };
}
