import 'package:authenticator/src/feature/provider/controller/store/auth_reducer.dart';
import 'package:core/core.dart';

import '../feature/view/auth_page.dart';

class AuthModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(AuthReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const AuthPage(),
    );
  }
}
