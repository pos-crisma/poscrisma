import 'dart:convert';

import '../model/user.dart';

class ListUserDTO {
  List<User>? users;

  ListUserDTO({
    this.users,
  });

  ListUserDTO copyWith({
    List<User>? users,
  }) =>
      ListUserDTO(
        users: users ?? this.users,
      );

  factory ListUserDTO.fromRawJson(String str) =>
      ListUserDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListUserDTO.fromJson(Map<String, dynamic> json) => ListUserDTO(
        users: json["users"] == null
            ? []
            : List<User>.from(json["users"]!.map((x) => User.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "users": users == null
            ? []
            : List<dynamic>.from(users!.map((x) => x.toJson())),
      };
}
