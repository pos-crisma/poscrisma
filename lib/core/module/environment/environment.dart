mixin URL {
  static const String production = "";
  static const String qa = "";
  static const String develop = "";
}

enum Environment {
  production(url: URL.production, isDebug: false, isDebugNetwork: false),
  qa(url: URL.qa, isDebug: false, isDebugNetwork: false),
  develop(url: URL.develop, isDebug: false, isDebugNetwork: false);

  final String url;
  final bool isDebug;
  final bool isDebugNetwork;

  const Environment({
    required this.url,
    required this.isDebug,
    required this.isDebugNetwork,
  });
}
