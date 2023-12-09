import 'dart:convert';

import '../error/model/error_info.dart';

typedef Entity = Map<String, dynamic>;

class NetworkResponse<T> {
  final bool ok;
  final ErrorInfo? error;
  final T? data;
  final T? value;

  NetworkResponse({
    required this.ok,
    this.error,
    this.data,
    this.value,
  });

  NetworkResponse copyWith({
    bool? ok,
    ErrorInfo? error,
    T? data,
    T? value,
  }) =>
      NetworkResponse(
        ok: ok ?? this.ok,
        error: error ?? this.error,
        data: data ?? this.data,
        value: data ?? this.value,
      );

  factory NetworkResponse.fromRawJson(String str) =>
      NetworkResponse.fromJson(json.decode(str));

  factory NetworkResponse.fromJson(Map<String, dynamic> json) =>
      NetworkResponse(
        ok: json["ok"],
        error: json["error"] == null ? null : ErrorInfo.fromJson(json["error"]),
        data: json["data"],
        value: json["value"],
      );
}
