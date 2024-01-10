import 'dart:convert';

class MascotUpdateDTO {
  final bool joinGames;

  MascotUpdateDTO({
    required this.joinGames,
  });

  MascotUpdateDTO copyWith({
    bool? joinGames,
  }) =>
      MascotUpdateDTO(
        joinGames: joinGames ?? this.joinGames,
      );

  factory MascotUpdateDTO.fromRawJson(String str) =>
      MascotUpdateDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MascotUpdateDTO.fromJson(Map<String, dynamic> json) => MascotUpdateDTO(
        joinGames: json["joinGames"],
      );

  Map<String, dynamic> toJson() => {
        "joinGames": joinGames,
      };
}
