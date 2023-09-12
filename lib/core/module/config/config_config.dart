import '../environment/environment.dart';

class Config {
  final Environment _flavor;
  Config({required Environment flavor}) : _flavor = flavor;

  Environment get env => _flavor;
  String get url => _flavor.url;
  bool get debug => _flavor.isDebug;
  bool get debugNetwork => _flavor.isDebugNetwork;
}
