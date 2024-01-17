import 'dart:convert';

class CreateRoomDTO {
  String blockName;
  String roomName;
  int bathrooms;
  int singleBed;
  int doubleBed;
  int supportBed;
  int couchBed;
  bool minibar;
  bool airConditioning;
  String observations;
  List<String> images;

  CreateRoomDTO({
    required this.blockName,
    required this.roomName,
    required this.bathrooms,
    required this.singleBed,
    required this.doubleBed,
    required this.supportBed,
    required this.couchBed,
    required this.minibar,
    required this.airConditioning,
    required this.observations,
    required this.images,
  });

  CreateRoomDTO copyWith({
    String? blockName,
    String? roomName,
    int? bathrooms,
    int? singleBed,
    int? doubleBed,
    int? supportBed,
    int? couchBed,
    bool? minibar,
    bool? airConditioning,
    String? observations,
    List<String>? images,
  }) =>
      CreateRoomDTO(
        blockName: blockName ?? this.blockName,
        roomName: roomName ?? this.roomName,
        bathrooms: bathrooms ?? this.bathrooms,
        singleBed: singleBed ?? this.singleBed,
        doubleBed: doubleBed ?? this.doubleBed,
        supportBed: supportBed ?? this.supportBed,
        couchBed: couchBed ?? this.couchBed,
        minibar: minibar ?? this.minibar,
        airConditioning: airConditioning ?? this.airConditioning,
        observations: observations ?? this.observations,
        images: images ?? this.images,
      );

  factory CreateRoomDTO.fromRawJson(String str) =>
      CreateRoomDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateRoomDTO.fromJson(Map<String, dynamic> json) => CreateRoomDTO(
        blockName: json["blockName"],
        roomName: json["roomName"],
        bathrooms: json["bathrooms"],
        singleBed: json["singleBed"],
        doubleBed: json["doubleBed"],
        supportBed: json["supportBed"],
        couchBed: json["couchBed"],
        minibar: json["minibar"],
        airConditioning: json["airConditioning"],
        observations: json["observations"],
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "blockName": blockName,
        "roomName": roomName,
        "bathrooms": bathrooms,
        "singleBed": singleBed,
        "doubleBed": doubleBed,
        "supportBed": supportBed,
        "couchBed": couchBed,
        "minibar": minibar,
        "airConditioning": airConditioning,
        "observations": observations,
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}
