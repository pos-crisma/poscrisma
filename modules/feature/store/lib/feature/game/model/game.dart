import 'dart:convert';

class Game {
  final String? gameId;
  final String? name;
  final String? description;
  final String? rules;
  final String? mode;
  final String? type;
  final String? period;
  final bool? chosen;
  final List<String>? videos;
  final List<String>? images;
  final List<Material>? materials;

  Game({
    this.gameId,
    this.name,
    this.description,
    this.rules,
    this.mode,
    this.type,
    this.period,
    this.chosen,
    this.videos,
    this.images,
    this.materials,
  });

  Game copyWith({
    String? gameId,
    String? name,
    String? description,
    String? rules,
    String? mode,
    String? type,
    String? period,
    bool? chosen,
    List<String>? videos,
    List<String>? images,
    List<Material>? materials,
  }) =>
      Game(
        gameId: gameId ?? this.gameId,
        name: name ?? this.name,
        description: description ?? this.description,
        rules: rules ?? this.rules,
        mode: mode ?? this.mode,
        type: type ?? this.type,
        period: period ?? this.period,
        chosen: chosen ?? this.chosen,
        videos: videos ?? this.videos,
        images: images ?? this.images,
        materials: materials ?? this.materials,
      );

  factory Game.fromRawJson(String str) => Game.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Game.fromJson(Map<String, dynamic> json) => Game(
        gameId: json["gameId"],
        name: json["name"],
        description: json["description"],
        rules: json["rules"],
        mode: json["mode"],
        type: json["type"],
        period: json["period"],
        chosen: json["chosen"],
        videos: json["videos"] == null
            ? []
            : List<String>.from(json["videos"]!.map((x) => x)),
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
        materials: json["materials"] == null
            ? []
            : List<Material>.from(
                json["materials"]!.map((x) => Material.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "gameId": gameId,
        "name": name,
        "description": description,
        "rules": rules,
        "mode": mode,
        "type": type,
        "period": period,
        "chosen": chosen,
        "videos":
            videos == null ? [] : List<dynamic>.from(videos!.map((x) => x)),
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "materials": materials == null
            ? []
            : List<dynamic>.from(materials!.map((x) => x.toJson())),
      };
}

class Material {
  final String? idMaterial;
  final String? material;
  final int? quantity;
  final String? observation;

  Material({
    this.idMaterial,
    this.material,
    this.quantity,
    this.observation,
  });

  Material copyWith({
    String? idMaterial,
    String? material,
    int? quantity,
    String? observation,
  }) =>
      Material(
        idMaterial: idMaterial ?? this.idMaterial,
        material: material ?? this.material,
        quantity: quantity ?? this.quantity,
        observation: observation ?? this.observation,
      );

  factory Material.fromRawJson(String str) =>
      Material.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Material.fromJson(Map<String, dynamic> json) => Material(
        idMaterial: json["idMaterial"],
        material: json["material"],
        quantity: json["quantity"],
        observation: json["observation"],
      );

  Map<String, dynamic> toJson() => {
        "idMaterial": idMaterial,
        "material": material,
        "quantity": quantity,
        "observation": observation,
      };
}
