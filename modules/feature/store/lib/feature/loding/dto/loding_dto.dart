import 'dart:convert';

class LodingsResponseDTO {
  List<Lodgin>? lodgins;

  LodingsResponseDTO({
    this.lodgins,
  });

  LodingsResponseDTO copyWith({
    List<Lodgin>? lodgins,
  }) =>
      LodingsResponseDTO(
        lodgins: lodgins ?? this.lodgins,
      );

  factory LodingsResponseDTO.fromRawJson(String str) =>
      LodingsResponseDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LodingsResponseDTO.fromJson(Map<String, dynamic> json) =>
      LodingsResponseDTO(
        lodgins: json["lodgins"] == null
            ? []
            : List<Lodgin>.from(
                json["lodgins"]!.map((x) => Lodgin.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "lodgins": lodgins == null
            ? []
            : List<dynamic>.from(lodgins!.map((x) => x.toJson())),
      };
}

class Lodgin {
  String? lodgingId;
  String? campingHouseId;
  String? campingHouseName;
  int? totalRoom;

  Lodgin({
    this.lodgingId,
    this.campingHouseId,
    this.campingHouseName,
    this.totalRoom,
  });

  Lodgin copyWith({
    String? lodgingId,
    String? campingHouseId,
    String? campingHouseName,
    int? totalRoom,
  }) =>
      Lodgin(
        lodgingId: lodgingId ?? this.lodgingId,
        campingHouseId: campingHouseId ?? this.campingHouseId,
        campingHouseName: campingHouseName ?? this.campingHouseName,
        totalRoom: totalRoom ?? this.totalRoom,
      );

  factory Lodgin.fromRawJson(String str) => Lodgin.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Lodgin.fromJson(Map<String, dynamic> json) => Lodgin(
        lodgingId: json["lodgingId"],
        campingHouseId: json["campingHouseId"],
        campingHouseName: json["campingHouseName"],
        totalRoom: json["totalRoom"],
      );

  Map<String, dynamic> toJson() => {
        "lodgingId": lodgingId,
        "campingHouseId": campingHouseId,
        "campingHouseName": campingHouseName,
        "totalRoom": totalRoom,
      };
}
