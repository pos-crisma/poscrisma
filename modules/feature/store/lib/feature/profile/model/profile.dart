import 'dart:convert';

class ProfileDTO {
  final String parishId;
  final String userId;
  final String typeUser;
  final String name;
  final String nickName;
  final String email;
  final String gender;
  final String birthdate;
  final String? phone;
  final String? medicalRecord;
  final bool guest;
  final FamilyDTO? family;
  final List<String>? permissions;
  final String familyId;

  ProfileDTO({
    required this.parishId,
    required this.userId,
    required this.typeUser,
    required this.name,
    required this.nickName,
    required this.email,
    required this.gender,
    required this.birthdate,
    required this.phone,
    required this.medicalRecord,
    required this.guest,
    required this.family,
    required this.permissions,
    required this.familyId,
  });

  ProfileDTO copyWith({
    String? parishId,
    String? userId,
    String? typeUser,
    String? name,
    String? nickName,
    String? email,
    String? gender,
    String? birthdate,
    String? phone,
    String? medicalRecord,
    bool? guest,
    FamilyDTO? family,
    List<String>? permissions,
    String? familyId,
  }) =>
      ProfileDTO(
        parishId: parishId ?? this.parishId,
        userId: userId ?? this.userId,
        typeUser: typeUser ?? this.typeUser,
        name: name ?? this.name,
        nickName: nickName ?? this.nickName,
        email: email ?? this.email,
        gender: gender ?? this.gender,
        birthdate: birthdate ?? this.birthdate,
        phone: phone ?? this.phone,
        medicalRecord: medicalRecord ?? this.medicalRecord,
        guest: guest ?? this.guest,
        family: family ?? this.family,
        permissions: permissions ?? this.permissions,
        familyId: familyId ?? this.familyId,
      );

  factory ProfileDTO.fromRawJson(String str) =>
      ProfileDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProfileDTO.fromJson(Map<String, dynamic> json) => ProfileDTO(
        parishId: json["parishId"],
        userId: json["userId"],
        typeUser: json["typeUser"],
        name: json["name"],
        nickName: json["nickName"],
        email: json["email"],
        gender: json["gender"],
        birthdate: json["birthdate"],
        phone: json["phone"],
        medicalRecord: json["medicalRecord"],
        guest: json["guest"],
        familyId: json["familyId"],
        family:
            json["family"] == null ? null : FamilyDTO.fromJson(json["family"]),
        permissions: List<String>.from(json["permissions"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "parishId": parishId,
        "userId": userId,
        "typeUser": typeUser,
        "name": name,
        "nickName": nickName,
        "email": email,
        "gender": gender,
        "birthdate": birthdate,
        "phone": phone,
        "medicalRecord": medicalRecord,
        "guest": guest,
        "family": family?.toJson(),
        "permissions": permissions,
        "familyId": familyId,
      };
}

class FamilyDTO {
  final String fatherId;
  final String father;
  final List<ChildrenDTO>? childrens;
  final List<GroupInfoDTO>? groups;

  FamilyDTO({
    required this.fatherId,
    required this.father,
    required this.childrens,
    required this.groups,
  });

  FamilyDTO copyWith({
    String? fatherId,
    String? father,
    List<ChildrenDTO>? childrens,
    List<GroupInfoDTO>? groups,
  }) =>
      FamilyDTO(
        fatherId: fatherId ?? this.fatherId,
        father: father ?? this.father,
        childrens: childrens ?? this.childrens,
        groups: groups ?? this.groups,
      );

  factory FamilyDTO.fromRawJson(String str) =>
      FamilyDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FamilyDTO.fromJson(Map<String, dynamic> json) => FamilyDTO(
        fatherId: json["fatherId"],
        father: json["father"],
        childrens: json["childrens"] == []
            ? null
            : List<ChildrenDTO>.from(
                json["childrens"].map((x) => ChildrenDTO.fromJson(x))),
        groups: json["groups"] == []
            ? null
            : List<GroupInfoDTO>.from(
                json["groups"].map((x) => GroupInfoDTO.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "fatherId": fatherId,
        "father": father,
        "childrens": childrens != null
            ? List<dynamic>.from(childrens!.map((x) => x.toJson()))
            : null,
        "groups": childrens != null
            ? List<dynamic>.from(groups!.map((x) => x.toJson()))
            : null,
      };
}

class ChildrenDTO {
  final String childrenId;
  final String name;
  final String gender;
  final String age;
  final bool joinGames;

  ChildrenDTO({
    required this.childrenId,
    required this.name,
    required this.gender,
    required this.age,
    required this.joinGames,
  });

  ChildrenDTO copyWith({
    String? childrenId,
    String? name,
    String? gender,
    String? age,
    bool? joinGames,
  }) =>
      ChildrenDTO(
        childrenId: childrenId ?? this.childrenId,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        age: age ?? this.age,
        joinGames: joinGames ?? this.joinGames,
      );

  factory ChildrenDTO.fromRawJson(String str) =>
      ChildrenDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChildrenDTO.fromJson(Map<String, dynamic> json) => ChildrenDTO(
        childrenId: json["childrenId"],
        name: json["name"],
        gender: json["gender"],
        age: json["age"],
        joinGames: json["joinGames"],
      );

  Map<String, dynamic> toJson() => {
        "childrenId": childrenId,
        "name": name,
        "gender": gender,
        "age": age,
        "joinGames": joinGames,
      };
}

class GroupInfoDTO {
  final String groupId;
  final String year;
  final List<GroupDTO> grupo;

  GroupInfoDTO({
    required this.groupId,
    required this.year,
    required this.grupo,
  });

  GroupInfoDTO copyWith({
    String? groupId,
    String? year,
    List<GroupDTO>? grupo,
  }) =>
      GroupInfoDTO(
        groupId: groupId ?? this.groupId,
        year: year ?? this.year,
        grupo: grupo ?? this.grupo,
      );

  factory GroupInfoDTO.fromRawJson(String str) =>
      GroupInfoDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GroupInfoDTO.fromJson(Map<String, dynamic> json) => GroupInfoDTO(
        groupId: json["groupId"],
        year: json["year"],
        grupo:
            List<GroupDTO>.from(json["grupo"].map((x) => GroupDTO.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "groupId": groupId,
        "year": year,
        "grupo": List<dynamic>.from(grupo.map((x) => x.toJson())),
      };
}

class GroupDTO {
  final String godchildrenId;
  final String name;
  final String gender;
  final String birthdate;
  final int age;

  GroupDTO({
    required this.godchildrenId,
    required this.name,
    required this.gender,
    required this.birthdate,
    required this.age,
  });

  GroupDTO copyWith({
    String? godchildrenId,
    String? name,
    String? gender,
    String? birthdate,
    int? age,
  }) =>
      GroupDTO(
        godchildrenId: godchildrenId ?? this.godchildrenId,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        birthdate: birthdate ?? this.birthdate,
        age: age ?? this.age,
      );

  factory GroupDTO.fromRawJson(String str) =>
      GroupDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GroupDTO.fromJson(Map<String, dynamic> json) => GroupDTO(
        godchildrenId: json["godchildrenId"],
        name: json["name"],
        gender: json["gender"],
        birthdate: json["birthdate"],
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "godchildrenId": godchildrenId,
        "name": name,
        "gender": gender,
        "birthdate": birthdate,
        "age": age,
      };
}
