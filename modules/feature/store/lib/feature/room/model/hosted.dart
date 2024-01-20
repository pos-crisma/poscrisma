import 'dart:convert';

import '../../hosted/model/god_parent.dart';

class Hosted {
  final String? roomId;
  final DateTime? checkIn;
  final dynamic checkOut;
  final String? userId;
  final String? userName;
  final String? userType;
  final String? userGender;
  String? birthdate;
  int? age;
  GodParents? godParents;

  Hosted({
    this.roomId,
    this.checkIn,
    this.checkOut,
    this.userId,
    this.userName,
    this.userType,
    this.userGender,
    this.birthdate,
    this.age,
    this.godParents,
  });

  Hosted copyWith(
          {String? roomId,
          DateTime? checkIn,
          dynamic checkOut,
          String? userId,
          String? userName,
          String? userType,
          String? userGender,
          String? birthdate,
          int? age,
          GodParents? godParents}) =>
      Hosted(
        roomId: roomId ?? this.roomId,
        checkIn: checkIn ?? this.checkIn,
        checkOut: checkOut ?? this.checkOut,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        userType: userType ?? this.userType,
        userGender: userGender ?? this.userGender,
        birthdate: birthdate ?? this.birthdate,
        age: age ?? this.age,
        godParents: godParents ?? this.godParents,
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
        birthdate: json["birthdate"],
        age: json["age"],
        godParents: json["godParents"] == null
            ? null
            : GodParents.fromJson(json["godParents"]),
      );

  Map<String, dynamic> toJson() => {
        "roomId": roomId,
        "checkIn": checkIn?.toIso8601String(),
        "checkOut": checkOut,
        "userId": userId,
        "userName": userName,
        "userType": userType,
        "userGender": userGender,
        "birthdate": birthdate,
        "age": age,
        "godParents": godParents?.toJson(),
      };
}
