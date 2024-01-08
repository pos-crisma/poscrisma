import 'dart:convert';

import '../model/game.dart';

class GameResponseDTO {
  final List<Game>? games;

  GameResponseDTO({
    this.games,
  });

  GameResponseDTO copyWith({
    List<Game>? games,
  }) =>
      GameResponseDTO(
        games: games ?? this.games,
      );

  factory GameResponseDTO.fromRawJson(String str) =>
      GameResponseDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GameResponseDTO.fromJson(Map<String, dynamic> json) =>
      GameResponseDTO(
        games: json["games"] == null
            ? []
            : List<Game>.from(json["games"]!.map((x) => Game.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "games": games == null
            ? []
            : List<dynamic>.from(games!.map((x) => x.toJson())),
      };
}
