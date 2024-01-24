import 'package:core/core.dart';

import '../dto/punish_dto.dart';

mixin PunishAPI {
  static Future<PunishDTO> createPunish(PunishDTO dto) async {
    final punishRef = punish.withConverter<PunishDTO>(
      fromFirestore: (snapshot, _) => PunishDTO.fromJson(snapshot.data()!),
      toFirestore: (punish, _) => punish.toJson(),
    );

    final result = await punishRef.add(dto);

    final punished = await result
        .get() //
        .then((value) => value.data()!);

    return punished;
  }

  static Future updatePunish(String id, bool isDone) async {
    final punishRef = punish.withConverter<PunishDTO>(
      fromFirestore: (snapshot, _) => PunishDTO.fromJson(snapshot.data()!),
      toFirestore: (punish, _) => punish.toJson(),
    );

    punishRef.doc(id).update({
      "done": isDone,
    });
  }

  static Stream<QuerySnapshot<PunishDTO>> stream() {
    final punishRef = punish.withConverter<PunishDTO>(
      fromFirestore: (snapshot, _) => PunishDTO.fromJson(snapshot.data()!),
      toFirestore: (punish, _) => punish.toJson(),
    );

    return punishRef.snapshots();
  }
}
