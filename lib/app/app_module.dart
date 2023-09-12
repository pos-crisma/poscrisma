import 'package:flutter_modular/flutter_modular.dart';
import 'package:poscrisma/core/container/container.dart';

import 'home/provider/home_provider.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => viewProvider,
    );
  }
}
