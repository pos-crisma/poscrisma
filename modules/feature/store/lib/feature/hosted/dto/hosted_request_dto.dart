import 'dart:convert';

class HostedRequestDTO {
  String? gender;
  String? userType;

  HostedRequestDTO({
    this.gender,
    this.userType,
  });

  HostedRequestDTO copyWith({
    String? gender,
    String? userType,
  }) =>
      HostedRequestDTO(
        gender: gender ?? this.gender,
        userType: userType ?? this.userType,
      );

  factory HostedRequestDTO.fromRawJson(String str) =>
      HostedRequestDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HostedRequestDTO.fromJson(Map<String, dynamic> json) =>
      HostedRequestDTO(
        gender: json["gender"],
        userType: json["userType"],
      );

  Map<String, dynamic> toJson() => {
        "gender": gender,
        "userType": userType,
      };
}
