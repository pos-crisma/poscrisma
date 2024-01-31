import 'package:core/core.dart';

import '../model/version.dart';

mixin VersionAPI {
  static Stream<DocumentSnapshot<Version>> streamVersion() {
    final versionRef = version
        .withConverter<Version>(
          fromFirestore: (snapshot, _) => Version.fromJson(snapshot.data()!),
          toFirestore: (version, _) => version.toJson(),
        );

    return versionRef.snapshots();
  }
}
