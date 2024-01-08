import 'dart:convert';

class DefaultResponseDTO {
  final String? id;

  DefaultResponseDTO({
    this.id,
  });

  DefaultResponseDTO copyWith({
    String? id,
  }) =>
      DefaultResponseDTO(
        id: id ?? this.id,
      );

  factory DefaultResponseDTO.fromRawJson(String str) =>
      DefaultResponseDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DefaultResponseDTO.fromJson(Map<String, dynamic> json) =>
      DefaultResponseDTO(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}
