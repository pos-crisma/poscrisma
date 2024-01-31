import 'dart:convert';

enum GameStatus {
  up_comming(text: "Proximos jogos"),
  live(text: "AO VIVO"),
  result(text: "Resultado");

  const GameStatus({
    required this.text,
  });

  final String text;
}

enum GameType {
  one_vs_one(text: "Um contra o outro"),
  all(text: "Todos"),
  challenge(text: "Desafio");

  const GameType({
    required this.text,
  });

  final String text;
}

enum TimeOfDay {
  Manha,
  Tarde,
  Noite;
}

class Schedule {
  final String? gameRoundId;
  final TimeOfDay? timeOfDay;
  final String? day;
  final String? gameId;
  final String? gameName;
  final String? matchup;
  final int? numberRound;
  final int? scoreTeamA;
  final int? scoreTeamB;
  final bool? isActive;
  final GameStatus? gameStatus;
  final GameType? gameType;
  final List<Judge>? judge;
  final TeamSchedule? teamInfoA;
  final TeamSchedule? teamInfoB;
  final List<Audit>? audit;

  Schedule({
    this.gameRoundId,
    this.timeOfDay,
    this.day,
    this.gameId,
    this.gameName,
    this.matchup,
    this.numberRound,
    this.scoreTeamA,
    this.scoreTeamB,
    this.judge,
    this.gameStatus,
    this.gameType,
    this.isActive,
    this.teamInfoA,
    this.teamInfoB,
    this.audit,
  });

  Schedule copyWith({
    String? gameRoundId,
    TimeOfDay? timeOfDay,
    String? day,
    String? gameId,
    String? gameName,
    String? matchup,
    int? numberRound,
    int? scoreTeamA,
    int? scoreTeamB,
    bool? isActive,
    GameStatus? gameStatus,
    GameType? gameType,
    List<Judge>? judge,
    TeamSchedule? teamInfoA,
    TeamSchedule? teamInfoB,
    List<Audit>? audit,
  }) =>
      Schedule(
        gameRoundId: gameRoundId ?? this.gameRoundId,
        timeOfDay: timeOfDay ?? this.timeOfDay,
        gameId: gameId ?? this.gameId,
        gameName: gameName ?? this.gameName,
        matchup: matchup ?? this.matchup,
        numberRound: numberRound ?? this.numberRound,
        judge: judge ?? this.judge,
        scoreTeamA: scoreTeamA ?? this.scoreTeamA,
        scoreTeamB: scoreTeamB ?? this.scoreTeamB,
        day: day ?? this.day,
        gameStatus: gameStatus ?? this.gameStatus,
        gameType: gameType ?? this.gameType,
        isActive: isActive ?? this.isActive,
        teamInfoA: teamInfoA ?? this.teamInfoA,
        teamInfoB: teamInfoB ?? this.teamInfoB,
        audit: audit ?? this.audit,
      );

  factory Schedule.fromRawJson(String str) =>
      Schedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        gameRoundId: json["gameRoundId"],
        timeOfDay: TimeOfDay.values.byName(json["timeOfDay"]),
        gameId: json["gameId"],
        gameName: json["gameName"],
        matchup: json["matchup"],
        numberRound: json["numberRound"],
        judge: json["judge"] == null
            ? []
            : List<Judge>.from(json["judge"]!.map((x) => x)),
        scoreTeamA: json["scoreTeamA"],
        scoreTeamB: json["scoreTeamB"],
        day: json["day"],
        isActive: json["isActive"],
        gameStatus: GameStatus.values.byName(json["gameStatus"]),
        gameType: GameType.values.byName(json["gameType"]),
        teamInfoA: json["teamInfoA"] != null
            ? TeamSchedule.fromJson(json["teamInfoA"])
            : null,
        teamInfoB: json["teamInfoB"] != null
            ? TeamSchedule.fromJson(json["teamInfoB"])
            : null,
        audit: json["audit"] == null
            ? []
            : List<Audit>.from(json["audit"]!.map((x) => Audit.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "gameRoundId": gameRoundId,
        "timeOfDay": timeOfDay!.name,
        "numberRound": numberRound,
        "gameId": gameId,
        "gameName": gameName,
        "matchup": matchup,
        "judge": judge,
        "scoreTeamA": scoreTeamA,
        "scoreTeamB": scoreTeamB,
        "day": day,
        "isActive": isActive,
        "gameStatus": gameStatus!.name,
        "gameType": gameType!.name,
        "teamInfoA": teamInfoA,
        "teamInfoB": teamInfoB,
        "audit": audit == null
            ? []
            : List<Audit>.from(audit!.map((x) => x.toJson())),
      };
}

// import 'dart:convert';

// class Audit {
//     List<AuditElement>? audit;

//     Audit({
//         this.audit,
//     });

//     Audit copyWith({
//         List<AuditElement>? audit,
//     }) =>
//         Audit(
//             audit: audit ?? this.audit,
//         );

//     factory Audit.fromRawJson(String str) => Audit.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Audit.fromJson(Map<String, dynamic> json) => Audit(
//         audit: json["audit"] == null ? [] : List<AuditElement>.from(json["audit"]!.map((x) => AuditElement.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "audit": audit == null ? [] : List<dynamic>.from(audit!.map((x) => x.toJson())),
//     };
// }

class Audit {
  String? userId;
  String? userName;
  int? oldScoreA;
  int? oldScoreB;
  int? newScoreA;
  int? newScoreB;

  Audit({
    this.userId,
    this.userName,
    this.oldScoreA,
    this.oldScoreB,
    this.newScoreA,
    this.newScoreB,
  });

  Audit copyWith({
    String? userId,
    String? userName,
    int? oldScoreA,
    int? oldScoreB,
    int? newScoreA,
    int? newScoreB,
  }) =>
      Audit(
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        oldScoreA: oldScoreA ?? this.oldScoreA,
        oldScoreB: oldScoreB ?? this.oldScoreB,
        newScoreA: newScoreA ?? this.newScoreA,
        newScoreB: newScoreB ?? this.newScoreB,
      );

  factory Audit.fromRawJson(String str) => Audit.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Audit.fromJson(Map<String, dynamic> json) => Audit(
        userId: json["userId"],
        userName: json["userName"],
        oldScoreA: json["oldScoreA"],
        oldScoreB: json["oldScoreB"],
        newScoreA: json["newScoreA"],
        newScoreB: json["newScoreB"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "userName": userName,
        "oldScoreA": oldScoreA,
        "oldScoreB": oldScoreB,
        "newScoreA": newScoreA,
        "newScoreB": newScoreB,
      };
}

class Judge {
  final String? judgeId;
  final String? userId;
  final String? userType;
  final String? judgeName;

  Judge({
    required this.judgeId,
    required this.userId,
    required this.userType,
    required this.judgeName,
  });

  Judge copyWith({
    String? judgeId,
    String? userId,
    String? userType,
    String? judgeName,
  }) =>
      Judge(
        judgeId: judgeId ?? this.judgeId,
        userId: userId ?? this.userId,
        userType: userType ?? this.userType,
        judgeName: judgeName ?? this.judgeName,
      );

  factory Judge.fromRawJson(String str) => Judge.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Judge.fromJson(Map<String, dynamic> json) => Judge(
        judgeId: json["judgeId"],
        userId: json["userId"],
        userType: json["userType"],
        judgeName: json["judgeName"],
      );

  Map<String, dynamic> toJson() => {
        "judgeId": judgeId,
        "userId": userId,
        "userType": userType,
        "judgeName": judgeName,
      };
}

class TeamSchedule {
  final String? teamId;
  final String? name;
  final String? color;
  final TeamMember? members;

  TeamSchedule({
    required this.teamId,
    required this.name,
    required this.color,
    required this.members,
  });

  TeamSchedule copyWith({
    String? teamId,
    String? name,
    String? color,
    TeamMember? members,
  }) =>
      TeamSchedule(
        teamId: teamId ?? this.teamId,
        name: name ?? this.name,
        color: color ?? this.color,
        members: members ?? this.members,
      );

  factory TeamSchedule.fromRawJson(String str) =>
      TeamSchedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TeamSchedule.fromJson(Map<String, dynamic> json) => TeamSchedule(
        teamId: json["teamId"],
        name: json["name"],
        color: json["color"],
        members: json["members"] != null
            ? TeamMember.fromJson(json["members"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "teamId": teamId,
        "name": name,
        "members": members,
      };
}

class TeamMember {
  final List<MemberYoung>? youngs;
  final List<MemberMascot>? mascots;

  TeamMember({
    required this.youngs,
    required this.mascots,
  });

  TeamMember copyWith({
    List<MemberYoung>? youngs,
    List<MemberMascot>? mascots,
  }) =>
      TeamMember(
        youngs: youngs ?? this.youngs,
        mascots: mascots ?? this.mascots,
      );

  factory TeamMember.fromRawJson(String str) =>
      TeamMember.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TeamMember.fromJson(Map<String, dynamic> json) => TeamMember(
        youngs: json["youngs"] == null
            ? []
            : List<MemberYoung>.from(
                json["youngs"]!.map((x) => MemberYoung.fromJson(x))),
        mascots: json["mascots"] == null
            ? []
            : List<MemberMascot>.from(
                json["mascots"]!.map((x) => MemberMascot.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "youngs": youngs,
        "mascots": mascots,
      };
}

class MemberYoung {
  final String? youngId;
  final String? name;
  final GodParent? godParent;

  MemberYoung({
    required this.youngId,
    required this.name,
    required this.godParent,
  });

  MemberYoung copyWith({
    String? youngId,
    String? name,
    GodParent? godParent,
  }) =>
      MemberYoung(
        youngId: youngId ?? this.youngId,
        name: name ?? this.name,
        godParent: godParent ?? this.godParent,
      );

  factory MemberYoung.fromRawJson(String str) =>
      MemberYoung.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MemberYoung.fromJson(Map<String, dynamic> json) => MemberYoung(
        youngId: json["youngId"],
        name: json["name"],
        godParent: json["godParent"] != null
            ? GodParent.fromJson(json["godParent"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "youngId": youngId,
        "name": name,
        "godParent": godParent,
      };
}

class MemberMascot {
  final String? mascotId;
  final String? name;
  final GodParent? godParent;

  MemberMascot({
    required this.mascotId,
    required this.name,
    required this.godParent,
  });

  MemberMascot copyWith({
    String? mascotId,
    String? name,
    GodParent? godParent,
  }) =>
      MemberMascot(
        mascotId: mascotId ?? this.mascotId,
        name: name ?? this.name,
        godParent: godParent ?? this.godParent,
      );

  factory MemberMascot.fromRawJson(String str) =>
      MemberMascot.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MemberMascot.fromJson(Map<String, dynamic> json) => MemberMascot(
        mascotId: json["youngId"],
        name: json["name"],
        godParent: json["godParent"] != null
            ? GodParent.fromJson(json["godParent"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "mascotId": mascotId,
        "name": name,
        "godParent": godParent,
      };
}

class GodParent {
  final String? godFatherId;
  final String? godMotherId;
  final String? godFather;
  final String? godMother;

  GodParent({
    required this.godFatherId,
    required this.godMotherId,
    required this.godFather,
    required this.godMother,
  });

  GodParent copyWith({
    String? godFatherId,
    String? godMotherId,
    String? godFather,
    String? godMother,
  }) =>
      GodParent(
        godFatherId: godFatherId ?? this.godFatherId,
        godMotherId: godMotherId ?? this.godMotherId,
        godFather: godFather ?? this.godFather,
        godMother: godMother ?? this.godMother,
      );

  factory GodParent.fromRawJson(String str) =>
      GodParent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GodParent.fromJson(Map<String, dynamic> json) => GodParent(
        godFatherId: json["godFatherId"],
        godMotherId: json["godMotherId"],
        godFather: json["godFather"],
        godMother: json["godMother"],
      );

  Map<String, dynamic> toJson() => {
        "godFatherId": godFatherId,
        "godMotherId": godMotherId,
        "godFather": godFather,
        "godMother": godMother,
      };
}
