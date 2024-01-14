import 'dart:convert';

class Env {
  final String url;

  Env({
    required this.url,
  });

  Env copyWith({
    String? url,
  }) =>
      Env(
        url: url ?? this.url,
      );

  factory Env.fromRawJson(String str) => Env.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Env.fromJson(Map<String, dynamic> json) => Env(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}
