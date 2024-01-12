import 'dart:convert';

class CreateFamilyGroupRequestDTO {
  final String familyId;
  final String year;

  CreateFamilyGroupRequestDTO({
    required this.familyId,
    required this.year,
  });

  CreateFamilyGroupRequestDTO copyWith({
    String? familyId,
    String? year,
  }) =>
      CreateFamilyGroupRequestDTO(
        familyId: familyId ?? this.familyId,
        year: year ?? this.year,
      );

  factory CreateFamilyGroupRequestDTO.fromRawJson(String str) =>
      CreateFamilyGroupRequestDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateFamilyGroupRequestDTO.fromJson(Map<String, dynamic> json) =>
      CreateFamilyGroupRequestDTO(
        familyId: json["familyId"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "familyId": familyId,
        "year": year,
      };
}
