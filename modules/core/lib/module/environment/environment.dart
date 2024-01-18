enum Environment {
  production(isDebug: false, isDebugNetwork: false),
  qa(isDebug: true, isDebugNetwork: true),
  develop(isDebug: true, isDebugNetwork: true);

  final bool isDebug;
  final bool isDebugNetwork;

  const Environment({
    required this.isDebug,
    required this.isDebugNetwork,
  });
}
