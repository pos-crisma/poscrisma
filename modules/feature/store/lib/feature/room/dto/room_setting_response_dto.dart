import 'dart:convert';

import '../model/room.dart';

class RoomSettingResponseDTO {
  final List<Room>? rooms;

  RoomSettingResponseDTO({
    this.rooms,
  });

  RoomSettingResponseDTO copyWith({
    List<Room>? rooms,
  }) =>
      RoomSettingResponseDTO(
        rooms: rooms ?? this.rooms,
      );

  factory RoomSettingResponseDTO.fromRawJson(String str) =>
      RoomSettingResponseDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RoomSettingResponseDTO.fromJson(Map<String, dynamic> json) =>
      RoomSettingResponseDTO(
        rooms: json["rooms"] == null
            ? []
            : List<Room>.from(json["rooms"]!.map((x) => Room.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "rooms": rooms == null
            ? []
            : List<dynamic>.from(rooms!.map((x) => x.toJson())),
      };
}
