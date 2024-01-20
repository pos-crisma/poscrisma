import 'dart:convert';

import '../../invite/enum/invite_type.dart';
import '../../user/model/user.dart';
import 'god_parent.dart';
import 'basic_hosted.dart';

class HostedUser {
  String? userId;
  String? name;
  String? nickName;
  UserGender? gender;
  bool? guest;
  InviteUserType? typeHostedUser;
  bool? isActive;
  GodParents? godParents;
  BasicHosted? hosted;
  int? age;
  String? birthdate;

  HostedUser(
      {this.userId,
      this.name,
      this.nickName,
      this.gender,
      this.guest,
      this.typeHostedUser,
      this.isActive,
      this.godParents,
      this.hosted,
      this.age,
      this.birthdate});

  HostedUser copyWith({
    String? userId,
    String? name,
    String? nickName,
    UserGender? gender,
    bool? guest,
    InviteUserType? typeHostedUser,
    bool? isActive,
    GodParents? godParents,
    BasicHosted? hosted,
    String? birthdate,
    int? age,
  }) =>
      HostedUser(
        userId: userId ?? this.userId,
        name: name ?? this.name,
        nickName: nickName ?? this.nickName,
        gender: gender ?? this.gender,
        guest: guest ?? this.guest,
        typeHostedUser: typeHostedUser ?? this.typeHostedUser,
        isActive: isActive ?? this.isActive,
        godParents: godParents ?? this.godParents,
        hosted: hosted ?? this.hosted,
        birthdate: birthdate ?? this.birthdate,
        age: age ?? this.age,
      );

  factory HostedUser.fromRawJson(String str) =>
      HostedUser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HostedUser.fromJson(Map<String, dynamic> json) => HostedUser(
        userId: json["userId"],
        name: json["name"],
        nickName: json["nickName"],
        gender: json["gender"] == null
            ? null
            : UserGender.values.byName(json["gender"]),
        guest: json["guest"],
        typeHostedUser: json["typeHostedUser"] == null
            ? null
            : InviteUserType.values.byName(json["typeHostedUser"]),
        isActive: json["isActive"],
        birthdate: json["birthdate"],
        age: json["age"],
        godParents: json["godParents"] == null
            ? null
            : GodParents.fromJson(json["godParents"]),
        hosted: json["hosted"] == null
            ? null
            : BasicHosted.fromJson(json["hosted"]),
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "nickName": nickName,
        "gender": gender?.name,
        "guest": guest,
        "typeHostedUser": typeHostedUser?.name,
        "isActive": isActive,
        "godParents": godParents?.toJson(),
        "hosted": hosted,
        "birthdate": birthdate,
        "age": age,
      };
}
