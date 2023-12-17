import 'dart:convert';

class CreateUserRequestDTO {
  final String name;
  final String nickName;
  final String phone;
  final String email;
  final String type;
  final String password;
  final String parishId;
  final String medicalRecord;

  CreateUserRequestDTO({
    required this.name,
    required this.nickName,
    required this.phone,
    required this.email,
    required this.type,
    required this.password,
    required this.parishId,
    required this.medicalRecord,
  });

  CreateUserRequestDTO copyWith({
    String? name,
    String? nickName,
    String? phone,
    String? email,
    String? type,
    String? password,
    String? parishId,
    String? medicalRecord,
  }) =>
      CreateUserRequestDTO(
        name: name ?? this.name,
        nickName: nickName ?? this.nickName,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        type: type ?? this.type,
        password: password ?? this.password,
        parishId: parishId ?? this.parishId,
        medicalRecord: medicalRecord ?? this.medicalRecord,
      );

  factory CreateUserRequestDTO.fromRawJson(String str) =>
      CreateUserRequestDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateUserRequestDTO.fromJson(Map<String, dynamic> json) =>
      CreateUserRequestDTO(
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
