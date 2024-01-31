import 'dart:convert';

import 'package:store/store.dart';

class TeamResponseDto {
  List<Team>? teams;

  TeamResponseDto({
    this.teams,
  });

  TeamResponseDto copyWith({
    List<Team>? teams,
  }) =>
      TeamResponseDto(
        teams: teams ?? this.teams,
      );

  factory TeamResponseDto.fromRawJson(String str) =>
      TeamResponseDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TeamResponseDto.fromJson(Map<String, dynamic> json) =>
      TeamResponseDto(
        teams: json["teams"] == null
            ? []
            : List<Team>.from(json["teams"]!.map((x) => Team.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "teams": teams,
      };
}

class Team {
  String? teamId;
  String? teamName;
  String? teamColor;
  dynamic battleCry;
  String? captainId;
  String? captainName;
  List<MemberYoung>? members;
  List<MemberMascot>? mascots;
  Games? games;

  Team({
    this.teamId,
    this.teamName,
    this.teamColor,
    this.battleCry,
    this.captainId,
    this.captainName,
    this.members,
    this.mascots,
    this.games,
  });

  Team copyWith({
    String? teamId,
    String? teamName,
    String? teamColor,
    dynamic battleCry,
    String? captainId,
    String? captainName,
    List<MemberYoung>? members,
    List<MemberMascot>? mascots,
    Games? games,
  }) =>
      Team(
        teamId: teamId ?? this.teamId,
        teamName: teamName ?? this.teamName,
        teamColor: teamColor ?? this.teamColor,
        battleCry: battleCry ?? this.battleCry,
        captainId: captainId ?? this.captainId,
        captainName: captainName ?? this.captainName,
        members: members ?? this.members,
        mascots: mascots ?? this.mascots,
        games: games ?? this.games,
      );

  factory Team.fromRawJson(String str) => Team.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        teamId: json["teamId"],
        teamName: json["teamName"]!,
        teamColor: json["teamColor"]!,
        battleCry: json["battleCry"],
        captainId: json["captainId"],
        captainName: json["captainName"],
        members: json["members"] == null
            ? []
            : List<MemberYoung>.from(
                json["members"]!.map((x) => MemberYoung.fromJson(x))),
        mascots: json["mascots"] == null
            ? []
            : List<MemberMascot>.from(
                json["mascots"]!.map((x) => MemberMascot.fromJson(x))),
        games: json["games"] == null //
            ? null
            : Games.fromJson(json["games"]),
      );

  Map<String, dynamic> toJson() => {
        "teamId": teamId,
        "teamName": teamName,
        "teamColor": teamColor,
        "battleCry": battleCry,
        "captainId": captainId,
        "captainName": captainName,
        "members": members == null
            ? []
            : List<MemberYoung>.from(members!.map((x) => x)),
        "mascots": mascots == null
            ? []
            : List<MemberMascot>.from(mascots!.map((x) => x)),
        "games": games?.toJson(),
      };
}

class Games {
  List<GameMoment>? quartaFeiraNoite;
  List<GameMoment>? quintaFeiraManha;
  List<GameMoment>? sextaFeiraManha;
  List<GameMoment>? sextaFeiraTarde;
  List<GameMoment>? sextaFeiraNoite;

  Games({
    this.quartaFeiraNoite,
    this.quintaFeiraManha,
    this.sextaFeiraManha,
    this.sextaFeiraTarde,
    this.sextaFeiraNoite,
  });

  Games copyWith({
    List<GameMoment>? quartaFeiraNoite,
    List<GameMoment>? quintaFeiraManha,
    List<GameMoment>? sextaFeiraManha,
    List<GameMoment>? sextaFeiraTarde,
    List<GameMoment>? sextaFeiraNoite,
  }) =>
      Games(
        quartaFeiraNoite: quartaFeiraNoite ?? this.quartaFeiraNoite,
        quintaFeiraManha: quintaFeiraManha ?? this.quintaFeiraManha,
        sextaFeiraManha: sextaFeiraManha ?? this.sextaFeiraManha,
        sextaFeiraTarde: sextaFeiraTarde ?? this.sextaFeiraTarde,
        sextaFeiraNoite: sextaFeiraNoite ?? this.sextaFeiraNoite,
      );

  factory Games.fromRawJson(String str) => Games.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Games.fromJson(Map<String, dynamic> json) => Games(
        quartaFeiraNoite: json["Quarta-Feira - Noite"] == null
            ? []
            : List<GameMoment>.from(json["Quarta-Feira - Noite"]!
                .map((x) => GameMoment.fromJson(x))),
        quintaFeiraManha: json["Quinta-Feira - Manha"] == null
            ? []
            : List<GameMoment>.from(json["Quinta-Feira - Manha"]!
                .map((x) => GameMoment.fromJson(x))),
        sextaFeiraManha: json["Sexta-Feira - Manha"] == null
            ? []
            : List<GameMoment>.from(json["Sexta-Feira - Manha"]!
                .map((x) => GameMoment.fromJson(x))),
        sextaFeiraTarde: json["Sexta-Feira - Tarde"] == null
            ? []
            : List<GameMoment>.from(json["Sexta-Feira - Tarde"]!
                .map((x) => GameMoment.fromJson(x))),
        sextaFeiraNoite: json["Sexta-Feira - Noite"] == null
            ? []
            : List<GameMoment>.from(json["Sexta-Feira - Noite"]!
                .map((x) => GameMoment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Quarta-Feira - Noite": quartaFeiraNoite,
        "Quinta-Feira - Manha": quintaFeiraManha,
        "Sexta-Feira - Manha": sextaFeiraManha,
        "Sexta-Feira - Tarde": sextaFeiraTarde,
        "Sexta-Feira - Noite": sextaFeiraNoite,
      };
}

class GameMoment {
  List<Judge>? judges;
  String? gameRoundId;
  String? gameId;
  String? gameName;
  String? gameTitle;
  String? teamAId;
  String? teamAName;
  String? teamAColor;
  String? teamBId;
  String? teamBName;
  String? teamBColor;

  GameMoment({
    this.judges,
    this.gameRoundId,
    this.gameId,
    this.gameName,
    this.gameTitle,
    this.teamAId,
    this.teamAName,
    this.teamAColor,
    this.teamBId,
    this.teamBName,
    this.teamBColor,
  });

  GameMoment copyWith({
    List<Judge>? judges,
    String? gameRoundId,
    String? gameId,
    String? gameName,
    String? gameTitle,
    String? teamAId,
    String? teamAName,
    String? teamAColor,
    String? teamBId,
    String? teamBName,
    String? teamBColor,
  }) =>
      GameMoment(
        judges: judges ?? this.judges,
        gameRoundId: gameRoundId ?? this.gameRoundId,
        gameId: gameId ?? this.gameId,
        gameName: gameName ?? this.gameName,
        gameTitle: gameTitle ?? this.gameTitle,
        teamAId: teamAId ?? this.teamAId,
        teamAName: teamAName ?? this.teamAName,
        teamAColor: teamAColor ?? this.teamAColor,
        teamBId: teamBId ?? this.teamBId,
        teamBName: teamBName ?? this.teamBName,
        teamBColor: teamBColor ?? this.teamBColor,
      );

  factory GameMoment.fromRawJson(String str) =>
      GameMoment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GameMoment.fromJson(Map<String, dynamic> json) => GameMoment(
        judges: json["judges"] == null
            ? []
            : List<Judge>.from(json["judges"]!.map((x) => Judge.fromJson(x))),
        gameRoundId: json["gameRoundId"],
        gameId: json["gameId"],
        gameName: json["gameName"]!,
        gameTitle: json["gameTitle"],
        teamAId: json["teamAId"],
        teamAName: json["teamAName"]!,
        teamAColor: json["teamAColor"]!,
        teamBId: json["teamBId"],
        teamBName: json["teamBName"]!,
        teamBColor: json["teamBColor"]!,
      );

  Map<String, dynamic> toJson() => {
        "judges": judges,
        "gameRoundId": gameRoundId,
        "gameId": gameId,
        "gameName": gameName,
        "gameTitle": gameTitle,
        "teamAId": teamAId,
        "teamAName": teamAName,
        "teamAColor": teamAColor,
        "teamBId": teamBId,
        "teamBName": teamBName,
        "teamBColor": teamBColor,
      };
}
