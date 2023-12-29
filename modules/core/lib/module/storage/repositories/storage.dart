abstract class Storage {
  Future<T?> get<T>(String key);
  Future put<T>(String key, T value);
  Future delete(String key);
}
