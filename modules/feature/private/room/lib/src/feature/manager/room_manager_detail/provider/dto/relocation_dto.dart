import 'dart:convert';

class RelocationDTO {
  String? userId;
  String? roomSettingId;

  RelocationDTO({
    this.userId,
    this.roomSettingId,
  });

  RelocationDTO copyWith({
    String? userId,
    String? roomSettingId,
  }) =>
      RelocationDTO(
        userId: userId ?? this.userId,
        roomSettingId: roomSettingId ?? this.roomSettingId,
      );

  factory RelocationDTO.fromRawJson(String str) =>
      RelocationDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RelocationDTO.fromJson(Map<String, dynamic> json) => RelocationDTO(
        userId: json["userId"],
        roomSettingId: json["roomSettingId"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "roomSettingId": roomSettingId,
      };
}
