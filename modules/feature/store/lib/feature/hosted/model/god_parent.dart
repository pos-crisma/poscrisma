import 'dart:convert';

class GodParents {
  String? godFatherId;
  String? godFather;
  String? godMotherId;
  String? godMother;

  GodParents({
    this.godFatherId,
    this.godFather,
    this.godMotherId,
    this.godMother,
  });

  GodParents copyWith({
    String? godFatherId,
    String? godFather,
    String? godMotherId,
    String? godMother,
  }) =>
      GodParents(
        godFatherId: godFatherId ?? this.godFatherId,
        godFather: godFather ?? this.godFather,
        godMotherId: godMotherId ?? this.godMotherId,
        godMother: godMother ?? this.godMother,
      );

  factory GodParents.fromRawJson(String str) =>
      GodParents.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GodParents.fromJson(Map<String, dynamic> json) => GodParents(
        godFatherId: json["godFatherId"],
        godFather: json["godFather"],
        godMotherId: json["godMotherId"],
        godMother: json["godMother"],
      );

  Map<String, dynamic> toJson() => {
        "godFatherId": godFatherId,
        "godFather": godFather,
        "godMotherId": godMotherId,
        "godMother": godMother,
      };
}
