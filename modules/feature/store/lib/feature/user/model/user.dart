// ignore_for_file: constant_identifier_names

import 'dart:convert';

import '../../invite/enum/invite_type.dart';

enum UserGender {
  Male,
  Female,
}

class User {
  String? userId;
  String? name;
  String? parishId;
  String? nickName;
  UserGender? gender;
  String? birthdate;
  int? age;
  bool? guest;
  String? familyId;
  InviteUserType? typeUser;
  String? email;
  String? phone;
  String? medicalRecord;
  bool? isActive;

  User({
    this.userId,
    this.name,
    this.parishId,
    this.nickName,
    this.gender,
    this.birthdate,
    this.age,
    this.guest,
    this.familyId,
    this.typeUser,
    this.email,
    this.phone,
    this.medicalRecord,
    this.isActive,
  });

  User copyWith({
    String? userId,
    String? name,
    String? parishId,
    String? nickName,
    UserGender? gender,
    String? birthdate,
    int? age,
    bool? guest,
    String? familyId,
    InviteUserType? typeUser,
    String? email,
    String? phone,
    String? medicalRecord,
    bool? isActive,
  }) =>
      User(
        userId: userId ?? this.userId,
        name: name ?? this.name,
        parishId: parishId ?? this.parishId,
        nickName: nickName ?? this.nickName,
        gender: gender ?? this.gender,
        birthdate: birthdate ?? this.birthdate,
        age: age ?? this.age,
        guest: guest ?? this.guest,
        familyId: familyId ?? this.familyId,
        typeUser: typeUser ?? this.typeUser,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        medicalRecord: medicalRecord ?? this.medicalRecord,
        isActive: isActive ?? this.isActive,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"],
        name: json["name"],
        parishId: json["parishId"],
        nickName: json["nickName"],
        gender: UserGender.values.byName(json["gender"]),
        birthdate: json["birthdate"],
        age: json["age"],
        guest: json["guest"],
        familyId: json["familyId"],
        typeUser: InviteUserType.values.byName(json["typeUser"]),
        email: json["email"],
        phone: json["phone"],
        medicalRecord: json["medicalRecord"],
        isActive: json["isActive"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "parishId": parishId,
        "nickName": nickName,
        "gender": gender?.name,
        "birthdate": birthdate,
        "age": age,
        "guest": guest,
        "familyId": familyId,
        "typeUser": typeUser?.name,
        "email": email,
        "phone": phone,
        "medicalRecord": medicalRecord,
        "isActive": isActive,
      };
}
