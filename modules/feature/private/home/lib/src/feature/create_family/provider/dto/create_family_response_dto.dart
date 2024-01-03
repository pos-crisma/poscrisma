import 'dart:convert';

class CreateFamilyResponseDTO {
  final String id;

  CreateFamilyResponseDTO({
    required this.id,
  });

  CreateFamilyResponseDTO copyWith({
    String? id,
  }) =>
      CreateFamilyResponseDTO(
        id: id ?? this.id,
      );

  factory CreateFamilyResponseDTO.fromRawJson(String str) =>
      CreateFamilyResponseDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateFamilyResponseDTO.fromJson(Map<String, dynamic> json) =>
      CreateFamilyResponseDTO(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}
