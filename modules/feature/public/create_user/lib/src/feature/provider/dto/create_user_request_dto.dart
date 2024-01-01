// ignore_for_file: constant_identifier_names

import 'dart:convert';

enum UserGender {
  Male,
  Female,
}

class CreateUserRequestDTO {
  final UserDTO user;
  final ParishDTO? parish;

  CreateUserRequestDTO({
    required this.user,
    this.parish,
  });

  CreateUserRequestDTO copyWith({
    UserDTO? user,
    ParishDTO? parish,
  }) =>
      CreateUserRequestDTO(
        user: user ?? this.user,
        parish: parish ?? this.parish,
      );

  factory CreateUserRequestDTO.fromRawJson(String str) =>
      CreateUserRequestDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateUserRequestDTO.fromJson(Map<String, dynamic> json) =>
      CreateUserRequestDTO(
        user: UserDTO.fromJson(json["user"]),
        parish: ParishDTO.fromJson(json["parish"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "parish": parish?.toJson(),
      };
}

class ParishDTO {
  final String name;
  final String address;

  ParishDTO({
    required this.name,
    required this.address,
  });

  ParishDTO copyWith({
    String? name,
    String? address,
  }) =>
      ParishDTO(
        name: name ?? this.name,
        address: address ?? this.address,
      );

  factory ParishDTO.fromRawJson(String str) =>
      ParishDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ParishDTO.fromJson(Map<String, dynamic> json) => ParishDTO(
        name: json["name"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "address": address,
      };
}

class UserDTO {
  final String name;
  final UserGender gender;
  final String birthdate;
  final String nickName;
  final String phone;
  final String email;
  final String type;
  final String password;
  final String medicalRecord;

  UserDTO({
    required this.name,
    required this.gender,
    required this.birthdate,
    required this.nickName,
    required this.phone,
    required this.email,
    required this.type,
    required this.password,
    required this.medicalRecord,
  });

  UserDTO copyWith({
    String? name,
    UserGender? gender,
    String? birthdate,
    String? nickName,
    String? phone,
    String? email,
    String? type,
    String? password,
    String? medicalRecord,
  }) =>
      UserDTO(
        name: name ?? this.name,
        gender: gender ?? this.gender,
        birthdate: birthdate ?? this.birthdate,
        nickName: nickName ?? this.nickName,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        type: type ?? this.type,
        password: password ?? this.password,
        medicalRecord: medicalRecord ?? this.medicalRecord,
      );

  factory UserDTO.fromRawJson(String str) => UserDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserDTO.fromJson(Map<String, dynamic> json) => UserDTO(
        name: json["name"],
        gender: json["gender"],
        birthdate: json["birthdate"],
        nickName: json["nickName"],
        phone: json["phone"],
        email: json["email"],
        type: json["type"],
        password: json["password"],
        medicalRecord: json["medicalRecord"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "gender": gender.name,
        "birthdate": birthdate,
        "nickName": nickName,
        "phone": phone,
        "email": email,
        "type": type,
        "password": password,
        "medicalRecord": medicalRecord,
      };
}
