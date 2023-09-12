import 'dart:convert';

class ErrorInfo {
  ErrorInfo({
    required this.code,
    required this.response,
    required this.error,
  });

  final int code;
  final String response;
  final ErrorData error;

  ErrorInfo copyWith({
    int? code,
    String? response,
    ErrorData? error,
  }) =>
      ErrorInfo(
        code: code ?? this.code,
        response: response ?? this.response,
        error: error ?? this.error,
      );

  factory ErrorInfo.fromRawJson(String str) =>
      ErrorInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ErrorInfo.fromJson(Map<String, dynamic> json) => ErrorInfo(
        code: json["code"],
        response: json["response"],
        error: ErrorData.fromJson(json["error"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "response": response,
        "error": error.toJson(),
      };
}

class ErrorData {
  ErrorData({
    required this.type,
    required this.statusCode,
    required this.message,
  });

  final String type;
  final int statusCode;
  final String message;

  ErrorData copyWith({
    String? type,
    int? statusCode,
    String? message,
  }) =>
      ErrorData(
        type: type ?? this.type,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message,
      );

  factory ErrorData.fromRawJson(String str) =>
      ErrorData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ErrorData.fromJson(Map<String, dynamic> json) => ErrorData(
        type: json["type"],
        statusCode: json["statusCode"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "statusCode": statusCode,
        "message": message,
      };
}
