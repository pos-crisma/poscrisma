import 'dart:convert';

class CreateMascotRequestDTO {
  final String name;
  final String gender;
  final String age;

  CreateMascotRequestDTO({
    required this.name,
    required this.gender,
    required this.age,
  });

  CreateMascotRequestDTO copyWith({
    String? name,
    String? gender,
    String? age,
  }) =>
      CreateMascotRequestDTO(
        name: name ?? this.name,
        gender: gender ?? this.gender,
        age: age ?? this.age,
      );

  factory CreateMascotRequestDTO.fromRawJson(String str) =>
      CreateMascotRequestDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateMascotRequestDTO.fromJson(Map<String, dynamic> json) =>
      CreateMascotRequestDTO(
        name: json["name"],
        gender: json["gender"],
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "gender": gender,
        "age": age,
      };
}
