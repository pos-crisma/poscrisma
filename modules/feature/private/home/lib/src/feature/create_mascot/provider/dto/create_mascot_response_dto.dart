import 'dart:convert';

class CreateMascotResponseDTO {
  final String id;

  CreateMascotResponseDTO({
    required this.id,
  });

  CreateMascotResponseDTO copyWith({
    String? id,
  }) =>
      CreateMascotResponseDTO(
        id: id ?? this.id,
      );

  factory CreateMascotResponseDTO.fromRawJson(String str) =>
      CreateMascotResponseDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateMascotResponseDTO.fromJson(Map<String, dynamic> json) =>
      CreateMascotResponseDTO(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}
