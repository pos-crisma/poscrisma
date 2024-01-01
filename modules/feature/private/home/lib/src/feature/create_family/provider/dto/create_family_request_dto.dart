import 'dart:convert';

class CreateFamilyRequestDTO {
  final String name;
  final String year;

  CreateFamilyRequestDTO({
    required this.name,
    required this.year,
  });

  CreateFamilyRequestDTO copyWith({
    String? name,
    String? year,
  }) =>
      CreateFamilyRequestDTO(
        name: name ?? this.name,
        year: year ?? this.year,
      );

  factory CreateFamilyRequestDTO.fromRawJson(String str) =>
      CreateFamilyRequestDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateFamilyRequestDTO.fromJson(Map<String, dynamic> json) =>
      CreateFamilyRequestDTO(
        name: json["name"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "year": year,
      };
}
