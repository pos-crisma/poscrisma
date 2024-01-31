import 'package:core/core.dart';

import '../model/schedule_model.dart';

mixin ScheduleAPI {
  static Stream<QuerySnapshot<Schedule>> stream() {
    final scheduleRef = schedule.withConverter<Schedule>(
      fromFirestore: (snapshot, _) => Schedule.fromJson(snapshot.data()!),
      toFirestore: (schedule, _) => schedule.toJson(),
    );

    return scheduleRef
        .orderBy('day', descending: false)
        .orderBy('timeOfDay', descending: false)
        .orderBy('numberRound', descending: false)
        .orderBy('gameName', descending: false)
        .snapshots();
  }

  static Stream<QuerySnapshot<Schedule>> streamByJudge({
    required String judgeId,
    required String day,
    required String timeOfDay,
  }) {
    final scheduleRef = schedule.withConverter<Schedule>(
      fromFirestore: (snapshot, _) => Schedule.fromJson(snapshot.data()!),
      toFirestore: (schedule, _) => schedule.toJson(),
    );

    return scheduleRef
        .orderBy('day', descending: false)
        .orderBy('timeOfDay', descending: false)
        .orderBy('numberRound', descending: false)
        .orderBy('gameName', descending: false)
        .where('judge', arrayContains: judgeId)
        .where('day', isEqualTo: day)
        .where('timeOfDay', isEqualTo: timeOfDay)
        .snapshots(includeMetadataChanges: true);
  }

  static Stream<QuerySnapshot<Schedule>> streamByDay({required String day}) {
    final scheduleRef = schedule.withConverter<Schedule>(
      fromFirestore: (snapshot, _) => Schedule.fromJson(snapshot.data()!),
      toFirestore: (schedule, _) => schedule.toJson(),
    );

    return scheduleRef
        .orderBy('day', descending: false)
        .orderBy('timeOfDay', descending: false)
        .orderBy('numberRound', descending: false)
        .orderBy('gameName', descending: false)
        .where('day', isEqualTo: day)
        .snapshots(includeMetadataChanges: true);
  }

  static Stream<QuerySnapshot<Schedule>> streamByDayAndTimeOfDay(
      {required String day, required String timeOfDay}) {
    final scheduleRef = schedule.withConverter<Schedule>(
      fromFirestore: (snapshot, _) => Schedule.fromJson(snapshot.data()!),
      toFirestore: (schedule, _) => schedule.toJson(),
    );

    return scheduleRef
        .orderBy('day', descending: false)
        .orderBy('timeOfDay', descending: false)
        .orderBy('numberRound', descending: false)
        .orderBy('gameName', descending: false)
        .where('day', isEqualTo: day)
        .where('timeOfDay', isEqualTo: timeOfDay)
        .snapshots(includeMetadataChanges: true);
  }
}
