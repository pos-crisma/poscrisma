import 'dart:convert';

import '../model/mascot.dart';

class MascotsResponseDTO {
  final List<Mascot>? mascots;

  MascotsResponseDTO({
    this.mascots,
  });

  MascotsResponseDTO copyWith({
    List<Mascot>? mascots,
  }) =>
      MascotsResponseDTO(
        mascots: mascots ?? this.mascots,
      );

  factory MascotsResponseDTO.fromRawJson(String str) =>
      MascotsResponseDTO.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MascotsResponseDTO.fromJson(Map<String, dynamic> json) => MascotsResponseDTO(
        mascots: json["mascots"] == null
            ? []
            : List<Mascot>.from(
                json["mascots"]!.map((x) => Mascot.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "mascots": mascots == null
            ? []
            : List<dynamic>.from(mascots!.map((x) => x.toJson())),
      };
}
