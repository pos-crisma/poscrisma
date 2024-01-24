import 'dart:convert';

import '../../user/model/user.dart';

class PunishDTO {
  final List<User> punish;
  final DateTime createdAt;
  final String createBy;
  final String? justifyPunish;

  PunishDTO({
    required this.punish,
    required this.createdAt,
    required this.createBy,
    this.justifyPunish,
  });

  PunishDTO copyWith({
    List<User>? punish,
    String? justifyPunish,
    String? createBy,
    DateTime? createdAt,
  }) =>
      PunishDTO(
        punish: punish ?? this.punish,
        justifyPunish: justifyPunish ?? this.justifyPunish,
        createdAt: createdAt ?? this.createdAt,
        createBy: createBy ?? this.createBy,
      );

  factory PunishDTO.fromRawJson(String str) =>
      PunishDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PunishDTO.fromJson(Map<String, dynamic> json) => PunishDTO(
        punish: json["punish"] == null
            ? []
            : List<User>.from(json["punish"]!.map((x) => User.fromJson(x))),
        justifyPunish: json["justifyPunish"],
        createBy: json["createBy"],
        createdAt: json["createdAt"],
      );

  Map<String, dynamic> toJson() => {
        "punish": List<dynamic>.from(punish.map((x) => x.toJson())),
        "justifyPunish": justifyPunish,
        "createBy": createBy,
        "createdAt": createdAt,
      };
}
