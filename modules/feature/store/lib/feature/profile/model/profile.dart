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
  final dynamic phone;
  final dynamic medicalRecord;
  final bool guest;
  final List<dynamic> family;

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
    dynamic phone,
    dynamic medicalRecord,
    bool? guest,
    List<dynamic>? family,
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
        family: List<dynamic>.from(json["family"].map((x) => x)),
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
        "family": List<dynamic>.from(family.map((x) => x)),
      };
}
