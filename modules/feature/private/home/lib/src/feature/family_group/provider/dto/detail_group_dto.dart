import 'dart:convert';

class DetailGroupDto {
  String? godfather;
  bool? isActive;
  String? year;
  String? groupId;
  List<Group>? group;

  DetailGroupDto({
    this.godfather,
    this.isActive,
    this.year,
    this.groupId,
    this.group,
  });

  DetailGroupDto copyWith({
    String? godfather,
    bool? isActive,
    String? year,
    String? groupId,
    List<Group>? group,
  }) =>
      DetailGroupDto(
        godfather: godfather ?? this.godfather,
        isActive: isActive ?? this.isActive,
        year: year ?? this.year,
        groupId: groupId ?? this.groupId,
        group: group ?? this.group,
      );

  factory DetailGroupDto.fromRawJson(String str) =>
      DetailGroupDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DetailGroupDto.fromJson(Map<String, dynamic> json) => DetailGroupDto(
        godfather: json["godfather"],
        isActive: json["isActive"],
        year: json["year"],
        groupId: json["groupId"],
        group: json["group"] == null
            ? []
            : List<Group>.from(json["group"]!.map((x) => Group.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "godfather": godfather,
        "isActive": isActive,
        "year": year,
        "groupId": groupId,
        "group": group == null
            ? []
            : List<dynamic>.from(group!.map((x) => x.toJson())),
      };
}

class Group {
  String? youngId;
  String? name;
  String? gender;
  int? age;
  bool? isActive;

  Group({
    this.youngId,
    this.name,
    this.gender,
    this.age,
    this.isActive,
  });

  Group copyWith({
    String? youngId,
    String? name,
    String? gender,
    int? age,
    bool? isActive,
  }) =>
      Group(
        youngId: youngId ?? this.youngId,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        age: age ?? this.age,
        isActive: isActive ?? this.isActive,
      );

  factory Group.fromRawJson(String str) => Group.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        youngId: json["youngId"],
        name: json["name"],
        gender: json["gender"],
        age: json["age"],
        isActive: json["isActive"],
      );

  Map<String, dynamic> toJson() => {
        "youngId": youngId,
        "name": name,
        "gender": gender,
        "age": age,
        "isActive": isActive,
      };
}
