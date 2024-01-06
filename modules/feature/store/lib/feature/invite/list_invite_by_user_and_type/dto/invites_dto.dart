import 'dart:convert';

import '../../enum/invite_type.dart';

class ListInviteByUserDTO {
  final List<Invite> invites;

  ListInviteByUserDTO({
    required this.invites,
  });

  ListInviteByUserDTO copyWith({
    List<Invite>? invites,
  }) =>
      ListInviteByUserDTO(
        invites: invites ?? this.invites,
      );

  factory ListInviteByUserDTO.fromRawJson(String str) =>
      ListInviteByUserDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListInviteByUserDTO.fromJson(Map<String, dynamic> json) =>
      ListInviteByUserDTO(
        invites:
            List<Invite>.from(json["invites"].map((x) => Invite.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "invites": List<dynamic>.from(invites.map((x) => x.toJson())),
      };
}

class Invite {
  final String inviteCode;
  final String parishId;
  final String senderId;
  final String familyId;
  final String groupId;
  final InviteType inviteType;
  final InviteUserType userType;
  final dynamic guest;
  final InviteStatus status;

  Invite({
    required this.inviteCode,
    required this.parishId,
    required this.senderId,
    required this.familyId,
    required this.groupId,
    required this.inviteType,
    required this.userType,
    required this.guest,
    required this.status,
  });

  Invite copyWith({
    String? inviteCode,
    String? parishId,
    String? senderId,
    String? familyId,
    String? groupId,
    InviteType? inviteType,
    InviteUserType? userType,
    InviteStatus? status,
    dynamic guest,
  }) =>
      Invite(
        inviteCode: inviteCode ?? this.inviteCode,
        parishId: parishId ?? this.parishId,
        senderId: senderId ?? this.senderId,
        familyId: familyId ?? this.familyId,
        groupId: groupId ?? this.groupId,
        inviteType: inviteType ?? this.inviteType,
        userType: userType ?? this.userType,
        guest: guest ?? this.guest,
        status: status ?? this.status,
      );

  factory Invite.fromRawJson(String str) => Invite.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Invite.fromJson(Map<String, dynamic> json) => Invite(
        inviteCode: json["inviteCode"],
        parishId: json["parishId"],
        senderId: json["senderId"],
        familyId: json["familyId"],
        groupId: json["groupId"],
        inviteType: InviteType.values.byName(json["inviteType"]),
        userType: InviteUserType.values.byName(json["userType"]),
        guest: json["guest"],
        status: InviteStatus.values.byName(json["status"]),
      );

  Map<String, dynamic> toJson() => {
        "inviteCode": inviteCode,
        "parishId": parishId,
        "senderId": senderId,
        "familyId": familyId,
        "groupId": groupId,
        "inviteType": inviteType.name,
        "userType": userType.name,
        "guest": guest,
        "status": status.name,
      };
}
