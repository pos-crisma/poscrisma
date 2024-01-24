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
DocumentReference environment =
    FirebaseFirestore.instance.collection('setting').doc("environment");
CollectionReference schedule =
    FirebaseFirestore.instance.collection('schedule');
CollectionReference punish =
    FirebaseFirestore.instance.collection('punish');
