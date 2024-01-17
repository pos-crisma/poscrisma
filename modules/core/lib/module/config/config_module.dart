import 'package:core/core.dart';

import '../environment/dto/env.dart';
import '../environment/environment.dart';
import 'config_config.dart';

mixin ConfigurationModule {
  static Future<Config> setup(Environment env, String url) async {
    final envAPI = await EnvironmentAPI.getEnv();

    return Config(flavor: env, url: envAPI.url);
  }
}

mixin EnvironmentAPI {
  static Future<Env> getEnv() async {
    try {
      final envRef = environment.withConverter<Env>(
        fromFirestore: (snapshot, _) => Env.fromJson(snapshot.data()!),
        toFirestore: (env, _) => env.toJson(),
      );

      final env = await envRef.get();
      return env.data()!;
    } catch (e) {
      return Env(url: "https://poscrisma-service-production.up.railway.app/v1");
    }
  }
}
