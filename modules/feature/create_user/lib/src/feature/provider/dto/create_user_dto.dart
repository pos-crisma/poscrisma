import 'dart:convert';

class CreateUserDTO {
  final String name;
  final String nickName;
  final String phone;
  final String email;
  final String type;
  final String password;
  final String parishId;
  final String medicalRecord;

  CreateUserDTO({
    required this.name,
    required this.nickName,
    required this.phone,
    required this.email,
    required this.type,
    required this.password,
    required this.parishId,
    required this.medicalRecord,
  });

  CreateUserDTO copyWith({
    String? name,
    String? nickName,
    String? phone,
    String? email,
    String? type,
    String? password,
    String? parishId,
    String? medicalRecord,
  }) =>
      CreateUserDTO(
        name: name ?? this.name,
        nickName: nickName ?? this.nickName,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        type: type ?? this.type,
        password: password ?? this.password,
        parishId: parishId ?? this.parishId,
        medicalRecord: medicalRecord ?? this.medicalRecord,
      );

  factory CreateUserDTO.fromRawJson(String str) =>
      CreateUserDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateUserDTO.fromJson(Map<String, dynamic> json) => CreateUserDTO(
        name: json["name"],
        nickName: json["nickName"],
        phone: json["phone"],
        email: json["email"],
        type: json["type"],
        password: json["password"],
        parishId: json["parishId"],
        medicalRecord: json["medicalRecord"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "nickName": nickName,
        "phone": phone,
        "email": email,
        "type": type,
        "password": password,
        "parishId": parishId,
        "medicalRecord": medicalRecord,
      };
}
