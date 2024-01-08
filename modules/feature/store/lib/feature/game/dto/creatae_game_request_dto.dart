import 'dart:convert';

class CreateGameRequestDTO {
  final String? name;
  final String? description;
  final String? rules;
  final String? type;
  final String? mode;
  final String? period;
  final bool? chosen;
  final List<String>? videos;
  final List<String>? images;

  CreateGameRequestDTO({
    this.name,
    this.description,
    this.rules,
    this.type,
    this.mode,
    this.period,
    this.chosen,
    this.videos,
    this.images,
  });

  CreateGameRequestDTO copyWith({
    String? name,
    String? description,
    String? rules,
    String? type,
    String? mode,
    String? period,
    bool? chosen,
    List<String>? videos,
    List<String>? images,
  }) =>
      CreateGameRequestDTO(
        name: name ?? this.name,
        description: description ?? this.description,
        rules: rules ?? this.rules,
        type: type ?? this.type,
        mode: mode ?? this.mode,
        period: period ?? this.period,
        chosen: chosen ?? this.chosen,
        videos: videos ?? this.videos,
        images: images ?? this.images,
      );

  factory CreateGameRequestDTO.fromRawJson(String str) =>
      CreateGameRequestDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateGameRequestDTO.fromJson(Map<String, dynamic> json) =>
      CreateGameRequestDTO(
        name: json["name"],
        description: json["description"],
        rules: json["rules"],
        type: json["type"],
        mode: json["mode"],
        period: json["period"],
        chosen: json["chosen"],
        videos: json["videos"] == null
            ? []
            : List<String>.from(json["videos"]!.map((x) => x)),
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "rules": rules,
        "type": type,
        "mode": mode,
        "period": period,
        "chosen": chosen,
        "videos":
            videos == null ? [] : List<dynamic>.from(videos!.map((x) => x)),
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
      };
}
