import 'dart:convert';

class ErrorInfo {
  ErrorInfo({
    this.code,
    this.response,
    this.error,
    this.message,
  });

  final int? code;
  final String? response;
  final dynamic message;
  final ErrorData? error;

  ErrorInfo copyWith({
    int? code,
    String? response,
    dynamic message,
    ErrorData? error,
  }) =>
      ErrorInfo(
        code: code ?? this.code,
        response: response ?? this.response,
        message: message ?? this.message,
        error: error ?? this.error,
      );

  factory ErrorInfo.fromRawJson(String str) =>
      ErrorInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ErrorInfo.fromJson(Map<String, dynamic> json) => ErrorInfo(
        code: json["code"] ?? 0,
        response: json["response"] ?? '',
        message: json["message"] ?? '',
        error: json["error"] != null
            ? json["error"] is String
                ? ErrorData(type: '', statusCode: 0, message: json["error"])
                : ErrorData.fromJson(json["error"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "response": response,
        "message": message,
        "error": error?.toJson(),
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
  final dynamic message;

  ErrorData copyWith({
    String? type,
    int? statusCode,
    dynamic message,
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
