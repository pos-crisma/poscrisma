import 'dart:convert';

import 'package:store/store.dart';

class FamiliesResponseDTO {
  List<Family>? families;

  FamiliesResponseDTO({
    this.families,
  });

  FamiliesResponseDTO copyWith({
    List<Family>? families,
  }) =>
      FamiliesResponseDTO(
        families: families ?? this.families,
      );

  factory FamiliesResponseDTO.fromRawJson(String str) =>
      FamiliesResponseDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FamiliesResponseDTO.fromJson(Map<String, dynamic> json) =>
      FamiliesResponseDTO(
        families: json["families"] == null
            ? []
            : List<Family>.from(
                json["families"]!.map((x) => Family.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "families": families == null
            ? []
            : List<dynamic>.from(families!.map((x) => x.toJson())),
      };
}

class Family {
  String? familyId;
  String? fatherId;
  String? motherId;
  String? father;
  String? mother;
  List<Children>? childrens;
  List<Group>? groups;

  Family({
    this.familyId,
    this.fatherId,
    this.motherId,
    this.father,
    this.mother,
    this.childrens,
    this.groups,
  });

  Family copyWith({
    String? familyId,
    String? fatherId,
    String? motherId,
    String? father,
    String? mother,
    List<Children>? childrens,
    List<Group>? groups,
  }) =>
      Family(
        familyId: familyId ?? this.familyId,
        fatherId: fatherId ?? this.fatherId,
        motherId: motherId ?? this.motherId,
        father: father ?? this.father,
        mother: mother ?? this.mother,
        childrens: childrens ?? this.childrens,
        groups: groups ?? this.groups,
      );

  factory Family.fromRawJson(String str) => Family.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Family.fromJson(Map<String, dynamic> json) => Family(
        familyId: json["familyId"],
        fatherId: json["fatherId"],
        motherId: json["motherId"],
        father: json["father"],
        mother: json["mother"],
        childrens: json["childrens"] == null
            ? []
            : List<Children>.from(
                json["childrens"]!.map((x) => Children.fromJson(x))),
        groups: json["groups"] == null
            ? []
            : List<Group>.from(json["groups"]!.map((x) => Group.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "familyId": familyId,
        "fatherId": fatherId,
        "motherId": motherId,
        "father": father,
        "mother": mother,
        "childrens": childrens == null
            ? []
            : List<dynamic>.from(childrens!.map((x) => x.toJson())),
        "groups": groups == null
            ? []
            : List<dynamic>.from(groups!.map((x) => x.toJson())),
      };
}

class Children {
  String? childrenId;
  String? name;
  UserGender? gender;
  String? age;
  bool? joinGames;

  Children({
    this.childrenId,
    this.name,
    this.gender,
    this.age,
    this.joinGames,
  });

  Children copyWith({
    String? childrenId,
    String? name,
    UserGender? gender,
    String? age,
    bool? joinGames,
  }) =>
      Children(
        childrenId: childrenId ?? this.childrenId,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        age: age ?? this.age,
        joinGames: joinGames ?? this.joinGames,
      );

  factory Children.fromRawJson(String str) =>
      Children.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Children.fromJson(Map<String, dynamic> json) => Children(
        childrenId: json["childrenId"],
        name: json["name"],
        gender: UserGender.values.byName(json["gender"]),
        age: json["age"],
        joinGames: json["joinGames"],
      );

  Map<String, dynamic> toJson() => {
        "childrenId": childrenId,
        "name": name,
        "gender": gender?.name,
        "age": age,
        "joinGames": joinGames,
      };
}

class Group {
  String? groupId;
  String? year;
  List<Grupo>? grupo;

  Group({
    this.groupId,
    this.year,
    this.grupo,
  });

  Group copyWith({
    String? groupId,
    String? year,
    List<Grupo>? grupo,
  }) =>
      Group(
        groupId: groupId ?? this.groupId,
        year: year ?? this.year,
        grupo: grupo ?? this.grupo,
      );

  factory Group.fromRawJson(String str) => Group.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        groupId: json["groupId"],
        year: json["year"],
        grupo: json["grupo"] == null
            ? []
            : List<Grupo>.from(json["grupo"]!.map((x) => Grupo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "groupId": groupId,
        "year": year,
        "grupo": grupo == null
            ? []
            : List<dynamic>.from(grupo!.map((x) => x.toJson())),
      };
}

class Grupo {
  String? godchildrenId;
  String? name;
  UserGender? gender;
  String? birthdate;
  int? age;

  Grupo({
    this.godchildrenId,
    this.name,
    this.gender,
    this.birthdate,
    this.age,
  });

  Grupo copyWith({
    String? godchildrenId,
    String? name,
    UserGender? gender,
    String? birthdate,
    int? age,
  }) =>
      Grupo(
        godchildrenId: godchildrenId ?? this.godchildrenId,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        birthdate: birthdate ?? this.birthdate,
        age: age ?? this.age,
      );

  factory Grupo.fromRawJson(String str) => Grupo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Grupo.fromJson(Map<String, dynamic> json) => Grupo(
        godchildrenId: json["godchildrenId"],
        name: json["name"],
        gender: UserGender.values.byName(json["gender"]),
        birthdate: json["birthdate"],
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "godchildrenId": godchildrenId,
        "name": name,
        "gender": gender?.name,
        "birthdate": birthdate,
        "age": age,
      };
}
