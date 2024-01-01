import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore instanceStore() {
  const Settings(
    persistenceEnabled: true,
    cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
  );

  return FirebaseFirestore.instance;
}

DocumentReference version =
    FirebaseFirestore.instance.collection('setting').doc("version");
CollectionReference schedule =
    FirebaseFirestore.instance.collection('schedule');
