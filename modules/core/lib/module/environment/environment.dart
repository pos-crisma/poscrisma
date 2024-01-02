mixin URL {
  static const String production = "https://poscrisma.ddns.com.br/v1";
  static const String qa = "https://poscrisma.ddns.com.br/v1";
  static const String develop = "https://poscrisma.ddns.com.br/v1";
}

enum Environment {
  production(url: URL.production, isDebug: false, isDebugNetwork: false),
  qa(url: URL.qa, isDebug: false, isDebugNetwork: false),
  develop(url: URL.develop, isDebug: true, isDebugNetwork: true);

  final String url;
  final bool isDebug;
  final bool isDebugNetwork;

  const Environment({
    required this.url,
    required this.isDebug,
    required this.isDebugNetwork,
  });
}
