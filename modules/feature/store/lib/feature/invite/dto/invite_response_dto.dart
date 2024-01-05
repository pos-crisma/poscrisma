import 'dart:convert';

class InviteResponseDTO {
  final String inviteCode;

  InviteResponseDTO({
    required this.inviteCode,
  });

  InviteResponseDTO copyWith({
    String? inviteCode,
  }) =>
      InviteResponseDTO(
        inviteCode: inviteCode ?? this.inviteCode,
      );

  factory InviteResponseDTO.fromRawJson(String str) =>
      InviteResponseDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InviteResponseDTO.fromJson(Map<String, dynamic> json) =>
      InviteResponseDTO(
        inviteCode: json["inviteCode"],
      );

  Map<String, dynamic> toJson() => {
        "inviteCode": inviteCode,
      };
}
