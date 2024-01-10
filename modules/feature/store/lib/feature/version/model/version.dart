import 'dart:convert';

class Version {
  final String version;
  final String message;
  final String iOS;
  final String android;
  final int build;
  final bool forceUpdate;

  Version({
    required this.version,
    required this.message,
    required this.iOS,
    required this.android,
    required this.build,
    required this.forceUpdate,
  });

  Version copyWith({
    String? version,
    String? message,
    String? iOS,
    String? android,
    int? build,
    bool? forceUpdate,
  }) =>
      Version(
        version: version ?? this.version,
        message: message ?? this.message,
        iOS: iOS ?? this.iOS,
        android: android ?? this.android,
        build: build ?? this.build,
        forceUpdate: forceUpdate ?? this.forceUpdate,
      );

  factory Version.fromRawJson(String str) => Version.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Version.fromJson(Map<String, dynamic> json) => Version(
        version: json["version"],
        message: json["message"],
        iOS: json["iOS"],
        android: json["android"],
        build: json["build"],
        forceUpdate: json["forceUpdate"],
      );

  Map<String, dynamic> toJson() => {
        "version": version,
        "message": message,
        "iOS": iOS,
        "android": android,
        "build": build,
        "forceUpdate": forceUpdate,
      };
}
