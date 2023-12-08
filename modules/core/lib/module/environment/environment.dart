mixin URL {
  static const String production = "http://poscrisma.ddns.com.br/v1";
  static const String qa = "http://poscrisma.ddns.com.br/v1";
  static const String develop = "http://poscrisma.ddns.com.br/v1";
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
