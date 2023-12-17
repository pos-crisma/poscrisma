import 'dart:convert';

class Parish {
  final String id;
  final String name;
  final String address;
  final DateTime createdAt;
  final DateTime updatedAt;

  Parish({
    required this.id,
    required this.name,
    required this.address,
    required this.createdAt,
    required this.updatedAt,
  });

  Parish copyWith({
    String? id,
    String? name,
    String? address,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Parish(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Parish.fromRawJson(String str) => Parish.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Parish.fromJson(Map<String, dynamic> json) => Parish(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address": address,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
