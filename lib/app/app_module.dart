import 'package:flutter_modular/flutter_modular.dart';

import 'home/provider/home_provider.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => viewProvider,
    );
  }
}
