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
  final bool guest;
  final String? phone;
  final String? medicalRecord;
  final FamilyDTO? family;
  final List<String>? permissions;
  final String? familyId;
  final HostedDTO? hosted;

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
    this.hosted,
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
    HostedDTO? hosted,
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
        hosted: hosted ?? this.hosted,
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
        hosted:
            json["hosted"] == null ? null : HostedDTO.fromJson(json["hosted"]),
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
        "hosted": hosted,
      };
}

class FamilyDTO {
  final String? fatherId;
  final String? father;
  final String? motherId;
  final String? mother;
  final List<ChildrenDTO>? childrens;
  final List<GroupInfoDTO>? groups;

  FamilyDTO({
    required this.fatherId,
    required this.father,
    required this.motherId,
    required this.mother,
    required this.childrens,
    required this.groups,
  });

  FamilyDTO copyWith({
    String? fatherId,
    String? father,
    String? motherId,
    String? mother,
    List<ChildrenDTO>? childrens,
    List<GroupInfoDTO>? groups,
  }) =>
      FamilyDTO(
        fatherId: fatherId ?? this.fatherId,
        father: father ?? this.father,
        motherId: motherId ?? this.motherId,
        mother: mother ?? this.mother,
        childrens: childrens ?? this.childrens,
        groups: groups ?? this.groups,
      );

  factory FamilyDTO.fromRawJson(String str) =>
      FamilyDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FamilyDTO.fromJson(Map<String, dynamic> json) => FamilyDTO(
        fatherId: json["fatherId"],
        father: json["father"],
        motherId: json["motherId"],
        mother: json["mother"],
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
        "motherId": motherId,
        "mother": mother,
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
  final String? godchildrenId;
  final String? name;
  final String? gender;
  final String? birthdate;
  final int? age;

  GroupDTO({
    this.godchildrenId,
    this.name,
    this.gender,
    this.birthdate,
    this.age,
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

class HostedDTO {
  final String? roomId;
  final String? blockName;
  final String? roomName;
  final List<String>? images;
  final bool? availability;
  final int? vacancies;
  final List<HostingDTO>? hostings;

  HostedDTO({
    this.roomId,
    this.blockName,
    this.roomName,
    this.images,
    this.availability,
    this.vacancies,
    this.hostings,
  });

  HostedDTO copyWith({
    String? roomId,
    String? blockName,
    String? roomName,
    List<String>? images,
    bool? availability,
    int? vacancies,
    List<HostingDTO>? hostings,
  }) =>
      HostedDTO(
        roomId: roomId ?? this.roomId,
        blockName: blockName ?? this.blockName,
        roomName: roomName ?? this.roomName,
        images: images ?? this.images,
        availability: availability ?? this.availability,
        vacancies: vacancies ?? this.vacancies,
        hostings: hostings ?? this.hostings,
      );

  factory HostedDTO.fromRawJson(String str) =>
      HostedDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HostedDTO.fromJson(Map<String, dynamic> json) => HostedDTO(
        roomId: json["roomId"],
        blockName: json["blockName"],
        roomName: json["roomName"],
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
        availability: json["availability"],
        vacancies: json["vacancies"],
        hostings: json["hostings"] == null
            ? []
            : List<HostingDTO>.from(
                json["hostings"]!.map((x) => HostingDTO.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "roomId": roomId,
        "blockName": blockName,
        "roomName": roomName,
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "availability": availability,
        "vacancies": vacancies,
        "hostings": hostings == null
            ? []
            : List<dynamic>.from(hostings!.map((x) => x.toJson())),
      };
}

class HostingDTO {
  final String? hostingId;
  final String? userId;
  final String? userType;
  final String? userName;
  final String? userGender;
  final DateTime? checkIn;
  final dynamic checkOut;

  HostingDTO({
    this.hostingId,
    this.userId,
    this.userType,
    this.userName,
    this.userGender,
    this.checkIn,
    this.checkOut,
  });

  HostingDTO copyWith({
    String? hostingId,
    String? userId,
    String? userType,
    String? userName,
    String? userGender,
    DateTime? checkIn,
    dynamic checkOut,
  }) =>
      HostingDTO(
        hostingId: hostingId ?? this.hostingId,
        userId: userId ?? this.userId,
        userType: userType ?? this.userType,
        userName: userName ?? this.userName,
        userGender: userGender ?? this.userGender,
        checkIn: checkIn ?? this.checkIn,
        checkOut: checkOut ?? this.checkOut,
      );

  factory HostingDTO.fromRawJson(String str) =>
      HostingDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HostingDTO.fromJson(Map<String, dynamic> json) => HostingDTO(
        hostingId: json["hostingId"],
        userId: json["userId"],
        userType: json["userType"],
        userName: json["userName"],
        userGender: json["userGender"],
        checkIn:
            json["checkIn"] == null ? null : DateTime.parse(json["checkIn"]),
        checkOut: json["checkOut"],
      );

  Map<String, dynamic> toJson() => {
        "hostingId": hostingId,
        "userId": userId,
        "userType": userType,
        "userName": userName,
        "userGender": userGender,
        "checkIn": checkIn?.toIso8601String(),
        "checkOut": checkOut,
      };
}
