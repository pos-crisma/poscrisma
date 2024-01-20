import 'dart:convert';

import '../model/hosted_user.dart';

class HostedUserDTO {
  List<HostedUser>? users;

  HostedUserDTO({
    this.users,
  });

  HostedUserDTO copyWith({
    List<HostedUser>? users,
  }) =>
      HostedUserDTO(
        users: users ?? this.users,
      );

  factory HostedUserDTO.fromRawJson(String str) =>
      HostedUserDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HostedUserDTO.fromJson(Map<String, dynamic> json) =>
      HostedUserDTO(
        users: json["users"] == null
            ? []
            : List<HostedUser>.from(
                json["users"]!.map((x) => HostedUser.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "users": users == null
            ? []
            : List<dynamic>.from(users!.map((x) => x.toJson())),
      };
}
