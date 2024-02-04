import 'package:core/core.dart';

import '../model/result_model.dart';

mixin ResultAPI {
  static Stream<QuerySnapshot<GameResult>> stream() {
    final resultRef = result.withConverter<GameResult>(
      fromFirestore: (snapshot, _) => GameResult.fromJson(snapshot.data()!),
      toFirestore: (result, _) => result.toJson(),
    );

    return resultRef.snapshots();
  }
}
