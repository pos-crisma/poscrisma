import 'dart:async';

import 'package:core/core.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<List> getInfo(String key) async {
  return await hiveStorage.get("@token");
}

class StorageHive implements Storage {
  final Completer<Box> _instance = Completer<Box>();

  _init() async {
    await Hive.initFlutter();
    var box = await Hive.openBox('db');
    _instance.complete(box);
  }

  StorageHive() {
    _init();
  }

  @override
  Future delete(String key) async {
    var box = await _instance.future;
    box.delete(key);
  }

  @override
  Future<T?> get<T>(String key) async {
    var box = await _instance.future;
    dynamic value = box.get(key);

    if (value != null) {
      T result = value;
      return result;
    } else {
      return null;
    }
  }

  @override
  Future put<T>(String key, T value) async {
    var box = await _instance.future;
    var result = box.put(key, value);
    return result;
  }
}
