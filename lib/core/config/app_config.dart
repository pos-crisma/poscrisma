import '../environment/environment.dart';

class AppConfig {
  final Environment _flavor;
  AppConfig({required Environment flavor}) : _flavor = flavor;

  Environment get env => _flavor;
  String get url => _flavor.url;
  bool get debug => _flavor.isDebug;
  bool get debugNetwork => _flavor.isDebugNetwork;
}
