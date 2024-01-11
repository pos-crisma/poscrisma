import '../module/config/config_module.dart';
import '../module/environment/environment_module.dart';
import '../module/network/network_module.dart';
import '../module/storage/storage_module.dart';

final env = EnvironmentModule.setup();
final config = ConfigurationModule.setup(env);
final localStorage = StorageModule.setupLocalStorage();
final hiveStorage = StorageModule.setupStorageHive();
final clientNetwork = NetworkModule.setupNetwork(config);
final baseRequest = NetworkModule.setupBaseRequest(clientNetwork, hiveStorage);
