import 'dart:convert';

import '../../user/model/user.dart';

class PunishDTO {
  final String id;
  final List<User> punish;
  final DateTime createdAt;
  final String createBy;
  final String? justifyPunish;
  final bool done;

  PunishDTO({
    required this.id,
    required this.punish,
    required this.createdAt,
    required this.createBy,
    this.justifyPunish,
    this.done = false,
  });

  PunishDTO copyWith({
    List<User>? punish,
    String? justifyPunish,
    String? createBy,
    DateTime? createdAt,
  }) =>
      PunishDTO(
        id: id,
        punish: punish ?? this.punish,
        justifyPunish: justifyPunish ?? this.justifyPunish,
        createdAt: createdAt ?? this.createdAt,
        createBy: createBy ?? this.createBy,
      );

  factory PunishDTO.fromRawJson(String str) =>
      PunishDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PunishDTO.fromJson(Map<String, dynamic> json) => PunishDTO(
        id: json["id"],
        punish: json["punish"] == null
            ? []
            : List<User>.from(json["punish"]!.map((x) => User.fromJson(x))),
        justifyPunish: json["justifyPunish"],
        createBy: json["createBy"],
        createdAt: DateTime.parse(json["createdAt"].toDate().toString()),
        done: json["done"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "punish": List<dynamic>.from(punish.map((x) => x.toJson())),
        "justifyPunish": justifyPunish,
        "createBy": createBy,
        "createdAt": createdAt,
        "done": done,
      };
}
