import 'dart:convert';

class CreateGameMaterialRequestDTO {
  final String? gameId;
  final String? material;
  final int? quantity;
  final String? observation;

  CreateGameMaterialRequestDTO({
    this.gameId,
    this.material,
    this.quantity,
    this.observation,
  });

  CreateGameMaterialRequestDTO copyWith({
    String? gameId,
    String? material,
    int? quantity,
    String? observation,
  }) =>
      CreateGameMaterialRequestDTO(
        gameId: gameId ?? this.gameId,
        material: material ?? this.material,
        quantity: quantity ?? this.quantity,
        observation: observation ?? this.observation,
      );

  factory CreateGameMaterialRequestDTO.fromRawJson(String str) =>
      CreateGameMaterialRequestDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateGameMaterialRequestDTO.fromJson(Map<String, dynamic> json) =>
      CreateGameMaterialRequestDTO(
        gameId: json["gameId"],
        material: json["material"],
        quantity: json["quantity"],
        observation: json["observation"],
      );

  Map<String, dynamic> toJson() => {
        "gameId": gameId,
        "material": material,
        "quantity": quantity,
        "observation": observation,
      };
}
