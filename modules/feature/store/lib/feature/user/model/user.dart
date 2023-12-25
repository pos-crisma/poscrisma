import 'dart:convert';

class User {
  final String id;
  final String type;
  final String parishId;
  final String nickName;

  User({
    required this.id,
    required this.type,
    required this.parishId,
    required this.nickName,
  });

  User copyWith({
    String? id,
    String? type,
    String? parishId,
    String? nickName,
  }) =>
      User(
        id: id ?? this.id,
        type: type ?? this.type,
        parishId: parishId ?? this.parishId,
        nickName: nickName ?? this.nickName,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        type: json["type"],
        parishId: json["parishId"],
        nickName: json["nickName"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "parishId": parishId,
        "nickName": nickName,
      };
}
