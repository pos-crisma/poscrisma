import 'dart:convert';

import '../model/game_material.dart';

class GameMaterialResponseDTO {
  final List<GamesInventory>? gamesInventory;

  GameMaterialResponseDTO({
    this.gamesInventory,
  });

  GameMaterialResponseDTO copyWith({
    List<GamesInventory>? gamesInventory,
  }) =>
      GameMaterialResponseDTO(
        gamesInventory: gamesInventory ?? this.gamesInventory,
      );

  factory GameMaterialResponseDTO.fromRawJson(String str) =>
      GameMaterialResponseDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GameMaterialResponseDTO.fromJson(Map<String, dynamic> json) =>
      GameMaterialResponseDTO(
        gamesInventory: json["gamesInventory"] == null
            ? []
            : List<GamesInventory>.from(
                json["gamesInventory"]!.map((x) => GamesInventory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "gamesInventory": gamesInventory == null
            ? []
            : List<dynamic>.from(gamesInventory!.map((x) => x.toJson())),
      };
}
