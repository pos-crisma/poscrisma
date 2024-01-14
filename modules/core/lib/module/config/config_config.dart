import '../environment/environment.dart';

class Config {
  final Environment _flavor;
  final String _url;
  Config({required Environment flavor, required String url})
      : _flavor = flavor,
        _url = url;

  Environment get env => _flavor;
  String get url => _url;
  bool get debug => _flavor.isDebug;
  bool get debugNetwork => _flavor.isDebugNetwork;
}
