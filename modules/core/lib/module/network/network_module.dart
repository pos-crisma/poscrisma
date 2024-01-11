import '../config/config_config.dart';
import '../storage/repositories/storage.dart';
import 'client/base_request.dart';
import 'client/client.dart';
import 'interface/network.dart';

mixin NetworkModule {
  static Network setupNetwork(Config config) => NetworkClient(config);
  static BaseRequest setupBaseRequest(Network client, Storage storage) =>
      BaseRequest(client: client, storage: storage);
}
