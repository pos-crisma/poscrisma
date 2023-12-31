// ignore_for_file: constant_identifier_names

import 'dart:convert';

import '../../enum/invite_type.dart';

class InviteRequestDTO {
  final InviteType type;
  final InviteUserType typeUser;
  final String? familyId;
  final String? groupId;
  final bool? guest;

  InviteRequestDTO({
    required this.type,
    required this.typeUser,
    required this.familyId,
    required this.groupId,
    this.guest,
  });

  InviteRequestDTO copyWith({
    InviteType? type,
    InviteUserType? typeUser,
    String? familyId,
    String? groupId,
    bool? guest,
  }) =>
      InviteRequestDTO(
        type: type ?? this.type,
        typeUser: typeUser ?? this.typeUser,
        familyId: familyId ?? this.familyId,
        groupId: groupId ?? this.groupId,
        guest: guest ?? this.guest,
      );

  factory InviteRequestDTO.fromRawJson(String str) =>
      InviteRequestDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InviteRequestDTO.fromJson(Map<String, dynamic> json) =>
      InviteRequestDTO(
        type: json["type"],
        typeUser: json["type_user"],
        familyId: json["familyId"],
        groupId: json["groupId"],
        guest: json["guest"],
      );

  Map<String, dynamic> toJson() => {
        "type": type.name,
        "type_user": typeUser.name,
        "familyId": familyId,
        "groupId": groupId,
        "guest": guest,
      };
}
