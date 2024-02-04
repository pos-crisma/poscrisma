import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore instanceStore() {
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
    cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
  );

  return FirebaseFirestore.instance;
}

DocumentReference version =
    FirebaseFirestore.instance.collection('setting').doc("version");
DocumentReference environment =
    FirebaseFirestore.instance.collection('setting').doc("environment");
CollectionReference result = FirebaseFirestore.instance.collection('result');
CollectionReference schedule =
    FirebaseFirestore.instance.collection('schedule');
CollectionReference punish = FirebaseFirestore.instance.collection('punish');

extension FirestoreDocumentExtension<T> on DocumentReference<T> {
  Future<DocumentSnapshot<T>> getCacheFirst() async {
    try {
      var ds = await get(const GetOptions(source: Source.cache));
      if (!ds.exists) return get(const GetOptions(source: Source.server));
      return ds;
    } catch (_) {
      return get(const GetOptions(source: Source.server));
    }
  }
}

extension FirestoreQueryExtension<T> on Query<T> {
  Future<QuerySnapshot<T>> getCacheFirst() async {
    try {
      var qs = await get(const GetOptions(source: Source.cache));
      if (qs.docs.isEmpty) return get(const GetOptions(source: Source.server));
      return qs;
    } catch (_) {
      return get(const GetOptions(source: Source.server));
    }
  }
}
