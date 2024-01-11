import '../environment/environment.dart';
import 'config_config.dart';

mixin ConfigurationModule {
  static Config setup(Environment env) => Config(flavor: env);
}
