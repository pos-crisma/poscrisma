import '../config/config_config.dart';
import '../storage/repositories/storage.dart';
import 'client/base_request.dart';
import 'client/client.dart';
import 'interface/network.dart';

mixin NetworkModule {
  static Future<Network> setupNetwork(Future<Config> config) async {
    final config0 = await config;
    return NetworkClient(config0);
  }

  static Future<BaseRequest> setupBaseRequest(
      Future<Network> client, Storage storage) async {
    final client0 = await client;

    return BaseRequest(client: client0, storage: storage);
  }
}
