import 'dart:convert';

class GamesInventory {
  final String? materialId;
  final String? gameId;
  final String? gameName;
  final String? material;
  final int? quantity;
  final String? observation;

  GamesInventory({
    this.materialId,
    this.gameId,
    this.gameName,
    this.material,
    this.quantity,
    this.observation,
  });

  GamesInventory copyWith({
    String? materialId,
    String? gameId,
    String? gameName,
    String? material,
    int? quantity,
    String? observation,
  }) =>
      GamesInventory(
        materialId: materialId ?? this.materialId,
        gameId: gameId ?? this.gameId,
        gameName: gameName ?? this.gameName,
        material: material ?? this.material,
        quantity: quantity ?? this.quantity,
        observation: observation ?? this.observation,
      );

  factory GamesInventory.fromRawJson(String str) =>
      GamesInventory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GamesInventory.fromJson(Map<String, dynamic> json) => GamesInventory(
        materialId: json["materialId"],
        gameId: json["gameId"],
        gameName: json["gameName"],
        material: json["material"],
        quantity: json["quantity"],
        observation: json["observation"],
      );

  Map<String, dynamic> toJson() => {
        "materialId": materialId,
        "gameId": gameId,
        "gameName": gameName,
        "material": material,
        "quantity": quantity,
        "observation": observation,
      };
}
