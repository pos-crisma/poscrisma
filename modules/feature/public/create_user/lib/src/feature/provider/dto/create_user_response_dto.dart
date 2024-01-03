import 'dart:convert';

class CreateUserResponseDTO {
  final String id;

  CreateUserResponseDTO({
    required this.id,
  });

  CreateUserResponseDTO copyWith({
    String? id,
  }) =>
      CreateUserResponseDTO(
        id: id ?? this.id,
      );

  factory CreateUserResponseDTO.fromRawJson(String str) =>
      CreateUserResponseDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateUserResponseDTO.fromJson(Map<String, dynamic> json) =>
      CreateUserResponseDTO(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}
