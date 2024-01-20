import 'dart:convert';

class BasicHosted {
  String? roomId;
  String? blockName;
  String? roomName;

  BasicHosted({
    this.roomId,
    this.blockName,
    this.roomName,
  });

  BasicHosted copyWith({
    String? roomId,
    String? blockName,
    String? roomName,
  }) =>
      BasicHosted(
        roomId: roomId ?? this.roomId,
        blockName: blockName ?? this.blockName,
        roomName: roomName ?? this.roomName,
      );

  factory BasicHosted.fromRawJson(String str) => BasicHosted.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BasicHosted.fromJson(Map<String, dynamic> json) => BasicHosted(
        roomId: json["roomId"],
        blockName: json["blockName"],
        roomName: json["roomName"],
      );

  Map<String, dynamic> toJson() => {
        "roomId": roomId,
        "blockName": blockName,
        "roomName": roomName,
      };
}
