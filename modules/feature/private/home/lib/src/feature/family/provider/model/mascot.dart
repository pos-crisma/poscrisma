import 'dart:convert';

class Mascot {
  final String familyId;
  final String? fatherId;
  final String? father;
  final String? motherId;
  final String? mother;
  final String? childrenId;
  final String? name;
  final String? gender;
  final String? age;
  final bool joinGames;

  Mascot({
    required this.familyId,
    required this.fatherId,
    required this.father,
    required this.motherId,
    required this.mother,
    required this.childrenId,
    required this.name,
    required this.gender,
    required this.age,
    required this.joinGames,
  });

  Mascot copyWith({
    String? familyId,
    String? fatherId,
    String? father,
    String? motherId,
    String? mother,
    String? childrenId,
    String? name,
    String? gender,
    String? age,
    bool? joinGames,
  }) =>
      Mascot(
        familyId: familyId ?? this.familyId,
        fatherId: fatherId ?? this.fatherId,
        father: father ?? this.father,
        motherId: motherId ?? this.motherId,
        mother: mother ?? this.mother,
        childrenId: childrenId ?? this.childrenId,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        age: age ?? this.age,
        joinGames: joinGames ?? this.joinGames,
      );

  factory Mascot.fromRawJson(String str) => Mascot.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Mascot.fromJson(Map<String, dynamic> json) => Mascot(
        familyId: json["familyId"],
        fatherId: json["fatherId"],
        father: json["father"],
        motherId: json["motherId"],
        mother: json["mother"],
        childrenId: json["childrenId"],
        name: json["name"],
        gender: json["gender"],
        age: json["age"],
        joinGames: json["joinGames"],
      );

  Map<String, dynamic> toJson() => {
        "familyId": familyId,
        "fatherId": fatherId,
        "father": father,
        "motherId": motherId,
        "mother": mother,
        "childrenId": childrenId,
        "name": name,
        "gender": gender,
        "age": age,
        "joinGames": joinGames,
      };
}
