import 'dart:convert';

import 'hosted.dart';

class Room {
  final String? roomId;
  final String? blockName;
  final String? roomName;
  final int? bathrooms;
  final int? singleBed;
  final int? doubleBed;
  final int? supportBed;
  final int? couchBed;
  final bool? minibar;
  final bool? airConditioning;
  final String? roomType;
  final String? observations;
  final List<String>? images;
  final bool? availability;
  final int? vacancies;
  final List<Hosted>? hosted;

  Room({
    this.roomId,
    this.blockName,
    this.roomName,
    this.bathrooms,
    this.singleBed,
    this.doubleBed,
    this.supportBed,
    this.couchBed,
    this.minibar,
    this.airConditioning,
    this.roomType,
    this.observations,
    this.images,
    this.availability,
    this.vacancies,
    this.hosted,
  });

  Room copyWith({
    String? roomId,
    String? blockName,
    String? roomName,
    int? bathrooms,
    int? singleBed,
    int? doubleBed,
    int? supportBed,
    int? couchBed,
    bool? minibar,
    bool? airConditioning,
    String? roomType,
    String? observations,
    List<String>? images,
    bool? availability,
    int? vacancies,
    List<Hosted>? hosted,
  }) =>
      Room(
        roomId: roomId ?? this.roomId,
        blockName: blockName ?? this.blockName,
        roomName: roomName ?? this.roomName,
        bathrooms: bathrooms ?? this.bathrooms,
        singleBed: singleBed ?? this.singleBed,
        doubleBed: doubleBed ?? this.doubleBed,
        supportBed: supportBed ?? this.supportBed,
        couchBed: couchBed ?? this.couchBed,
        minibar: minibar ?? this.minibar,
        airConditioning: airConditioning ?? this.airConditioning,
        roomType: roomType ?? this.roomType,
        observations: observations ?? this.observations,
        images: images ?? this.images,
        availability: availability ?? this.availability,
        vacancies: vacancies ?? this.vacancies,
        hosted: hosted ?? this.hosted,
      );

  factory Room.fromRawJson(String str) => Room.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        roomId: json["roomId"],
        blockName: json["blockName"],
        roomName: json["roomName"],
        bathrooms: json["bathrooms"],
        singleBed: json["singleBed"],
        doubleBed: json["doubleBed"],
        supportBed: json["supportBed"],
        couchBed: json["couchBed"],
        minibar: json["minibar"],
        airConditioning: json["airConditioning"],
        roomType: json["roomType"],
        observations: json["observations"],
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
        availability: json["availability"],
        vacancies: json["vacancies"],
        hosted: json["hosted"] == null
            ? []
            : List<Hosted>.from(json["hosted"]!.map((x) => Hosted.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        // "roomId": roomId,
        "blockName": blockName,
        "roomName": roomName,
        "bathrooms": bathrooms,
        "singleBed": singleBed,
        "doubleBed": doubleBed,
        "supportBed": supportBed,
        "couchBed": couchBed,
        "minibar": minibar,
        "airConditioning": airConditioning,
        "roomType": roomType,
        "observations": observations,
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        // "availability": availability,
        // "vacancies": vacancies,
        // "hosted": hosted == null
        //     ? []
        //     : List<dynamic>.from(hosted!.map((x) => x.toJson())),
      };
}
