import 'dart:convert';

class NetworkError {
  final String description;
  final String name;
  final int codeError;
  final int statusCode;
  final bool isOperational;

  NetworkError({
    required this.description,
    required this.name,
    required this.codeError,
    required this.statusCode,
    required this.isOperational,
  });

  NetworkError copyWith({
    String? description,
    String? name,
    int? codeError,
    int? statusCode,
    bool? isOperational,
  }) =>
      NetworkError(
        description: description ?? this.description,
        name: name ?? this.name,
        codeError: codeError ?? this.codeError,
        statusCode: statusCode ?? this.statusCode,
        isOperational: isOperational ?? this.isOperational,
      );

  factory NetworkError.fromRawJson(String str) =>
      NetworkError.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NetworkError.fromJson(Map<String, dynamic> json) => NetworkError(
        description: json["description"],
        name: json["name"],
        codeError: json["codeError"],
        statusCode: json["statusCode"],
        isOperational: json["isOperational"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "name": name,
        "codeError": codeError,
        "statusCode": statusCode,
        "isOperational": isOperational,
      };
}
