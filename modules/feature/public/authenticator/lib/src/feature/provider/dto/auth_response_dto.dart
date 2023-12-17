import 'dart:convert';

class AuthResponseDTO {
  final String accessToken;

  AuthResponseDTO({
    required this.accessToken,
  });

  AuthResponseDTO copyWith({
    String? accessToken,
  }) =>
      AuthResponseDTO(
        accessToken: accessToken ?? this.accessToken,
      );

  factory AuthResponseDTO.fromRawJson(String str) =>
      AuthResponseDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuthResponseDTO.fromJson(Map<String, dynamic> json) =>
      AuthResponseDTO(
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
      };
}
