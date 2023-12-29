import 'dart:convert';

class AuthRequestDTO {
  final String nickName;
  final String password;

  AuthRequestDTO({
    required this.nickName,
    required this.password,
  });

  AuthRequestDTO copyWith({
    String? nickName,
    String? password,
  }) =>
      AuthRequestDTO(
        nickName: nickName ?? this.nickName,
        password: password ?? this.password,
      );

  factory AuthRequestDTO.fromRawJson(String str) =>
      AuthRequestDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuthRequestDTO.fromJson(Map<String, dynamic> json) => AuthRequestDTO(
        nickName: json["nickName"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "nickName": nickName,
        "password": password,
      };
}
