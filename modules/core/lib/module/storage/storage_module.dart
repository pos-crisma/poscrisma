import 'local_storage.dart';
import 'repositories/storage_client.dart';

mixin StorageModule {
  static LocalStorage setupLocalStorage() => LocalStorage();
  static StorageHive setupStorageHive() => StorageHive();
}
