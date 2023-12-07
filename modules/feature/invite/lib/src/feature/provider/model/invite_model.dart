// ignore_for_file: constant_identifier_names

import 'dart:convert';

enum InviteType {
  CreateParish,
  CreateUser,
}

enum UserType {
  GodParent,
  Young,
  Voluntary,
}

class Invite {
  final String id;
  final String inviteCode;
  final String parishId;
  final String senderId;
  final InviteType type;
  final UserType? typeUser;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;

  Invite({
    required this.id,
    required this.inviteCode,
    required this.parishId,
    required this.senderId,
    required this.type,
    required this.typeUser,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  Invite copyWith({
    String? id,
    String? inviteCode,
    String? parishId,
    String? senderId,
    InviteType? type,
    UserType? typeUser,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Invite(
        id: id ?? this.id,
        inviteCode: inviteCode ?? this.inviteCode,
        parishId: parishId ?? this.parishId,
        senderId: senderId ?? this.senderId,
        type: type ?? this.type,
        typeUser: typeUser ?? this.typeUser,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Invite.fromRawJson(String str) => Invite.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Invite.fromJson(Map<String, dynamic> json) => Invite(
        id: json["id"],
        inviteCode: json["inviteCode"],
        parishId: json["parishId"],
        senderId: json["senderId"],
        type: InviteType.values.byName(json["type"]),
        typeUser: json["type_user"] == null ? null : UserType.values.byName(json["type_user"]),
        status: json["status"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "inviteCode": inviteCode,
        "parishId": parishId,
        "senderId": senderId,
        "type": type,
        "type_user": typeUser,
        "status": status,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
