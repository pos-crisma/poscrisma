import 'dart:convert';

class GameResult {
  String? teamId;
  String? teamName;
  int? countGames;
  TeamOutcome? teamOutcome;
  List<GameResultScore>? score;

  GameResult({
    this.teamId,
    this.teamName,
    this.countGames,
    this.teamOutcome,
    this.score,
  });

  GameResult copyWith({
    String? teamId,
    String? teamName,
    int? countGames,
    TeamOutcome? teamOutcome,
    List<GameResultScore>? score,
  }) =>
      GameResult(
        teamId: teamId ?? this.teamId,
        teamName: teamName ?? this.teamName,
        countGames: countGames ?? this.countGames,
        teamOutcome: teamOutcome ?? this.teamOutcome,
        score: score ?? this.score,
      );

  factory GameResult.fromRawJson(String str) =>
      GameResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GameResult.fromJson(Map<String, dynamic> json) => GameResult(
        teamId: json["teamId"],
        teamName: json["teamName"],
        countGames: json["countGames"],
        teamOutcome: json["teamOutcome"] == null
            ? null
            : TeamOutcome.fromJson(json["teamOutcome"]),
        score: json["score"] == null
            ? []
            : List<GameResultScore>.from(
                json["score"]!.map((x) => GameResultScore.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "teamId": teamId,
        "teamName": teamName,
        "countGames": countGames,
        "teamOutcome": teamOutcome?.toJson(),
        "score": score == null
            ? []
            : List<dynamic>.from(score!.map((x) => x.toJson())),
      };
}

class GameResultScore {
  String? day;
  String? timeOfDay;
  int? numberRound;
  String? gameName;
  String? gameType;
  List<PurpleScore>? score;

  GameResultScore({
    this.day,
    this.timeOfDay,
    this.numberRound,
    this.gameName,
    this.gameType,
    this.score,
  });

  GameResultScore copyWith({
    String? day,
    String? timeOfDay,
    int? numberRound,
    String? gameName,
    String? gameType,
    List<PurpleScore>? score,
  }) =>
      GameResultScore(
        day: day ?? this.day,
        timeOfDay: timeOfDay ?? this.timeOfDay,
        numberRound: numberRound ?? this.numberRound,
        gameName: gameName ?? this.gameName,
        gameType: gameType ?? this.gameType,
        score: score ?? this.score,
      );

  factory GameResultScore.fromRawJson(String str) =>
      GameResultScore.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GameResultScore.fromJson(Map<String, dynamic> json) =>
      GameResultScore(
        day: json["day"],
        timeOfDay: json["timeOfDay"],
        numberRound: json["numberRound"],
        gameName: json["gameName"],
        gameType: json["gameType"],
        score: json["score"] == null
            ? []
            : List<PurpleScore>.from(
                json["score"]!.map((x) => PurpleScore.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "timeOfDay": timeOfDay,
        "numberRound": numberRound,
        "gameName": gameName,
        "gameType": gameType,
        "score": score == null
            ? []
            : List<dynamic>.from(score!.map((x) => x.toJson())),
      };
}

class PurpleScore {
  String? teamId;
  String? teamName;
  List<FluffyScore>? score;

  PurpleScore({
    this.teamId,
    this.teamName,
    this.score,
  });

  PurpleScore copyWith({
    String? teamId,
    String? teamName,
    List<FluffyScore>? score,
  }) =>
      PurpleScore(
        teamId: teamId ?? this.teamId,
        teamName: teamName ?? this.teamName,
        score: score ?? this.score,
      );

  factory PurpleScore.fromRawJson(String str) =>
      PurpleScore.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleScore.fromJson(Map<String, dynamic> json) => PurpleScore(
        teamId: json["teamId"],
        teamName: json["teamName"],
        score: json["score"] == null
            ? []
            : List<FluffyScore>.from(
                json["score"]!.map((x) => FluffyScore.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "teamId": teamId,
        "teamName": teamName,
        "score": score == null
            ? []
            : List<dynamic>.from(score!.map((x) => x.toJson())),
      };
}

class FluffyScore {
  String? teamId;
  String? teamName;
  int? score;

  FluffyScore({
    this.teamId,
    this.teamName,
    this.score,
  });

  FluffyScore copyWith({
    String? teamId,
    String? teamName,
    int? score,
  }) =>
      FluffyScore(
        teamId: teamId ?? this.teamId,
        teamName: teamName ?? this.teamName,
        score: score ?? this.score,
      );

  factory FluffyScore.fromRawJson(String str) =>
      FluffyScore.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyScore.fromJson(Map<String, dynamic> json) => FluffyScore(
        teamId: json["teamId"],
        teamName: json["teamName"],
        score: json["score"],
      );

  Map<String, dynamic> toJson() => {
        "teamId": teamId,
        "teamName": teamName,
        "score": score,
      };
}

class TeamOutcome {
  int? points;
  int? winCount;
  int? drawCount;
  int? lossCount;

  TeamOutcome({
    this.points,
    this.winCount,
    this.drawCount,
    this.lossCount,
  });

  TeamOutcome copyWith({
    int? points,
    int? winCount,
    int? drawCount,
    int? lossCount,
  }) =>
      TeamOutcome(
        points: points ?? this.points,
        winCount: winCount ?? this.winCount,
        drawCount: drawCount ?? this.drawCount,
        lossCount: lossCount ?? this.lossCount,
      );

  factory TeamOutcome.fromRawJson(String str) =>
      TeamOutcome.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TeamOutcome.fromJson(Map<String, dynamic> json) => TeamOutcome(
        points: json["points"],
        winCount: json["winCount"],
        drawCount: json["drawCount"],
        lossCount: json["lossCount"],
      );

  Map<String, dynamic> toJson() => {
        "points": points,
        "winCount": winCount,
        "drawCount": drawCount,
        "lossCount": lossCount,
      };
}
