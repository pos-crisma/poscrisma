import 'package:core/core.dart';

import '../view/auth_page.dart';

class AuthModule extends Module {
  @override
  void binds(Injector i) {
    // i.addSingleton(FeedReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const AuthPage(),
    );
  }
}
