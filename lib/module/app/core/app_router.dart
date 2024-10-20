import 'package:poscrisma/index.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const root = '/';
  static const home = HomeRouter.root;
  static const login = LoginRouter.root;

  static GoRouter init() {
    return GoRouter(
      redirect: (context, state) {
        return null;
      },
      routes: [
        HomeRouter.routes(),
        LoginRouter.routes(),
        SplashRouter.routes(),
      ],
    );
  }
}
