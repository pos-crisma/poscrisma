import 'package:core/core.dart';

import '../view/splash_screen_page.dart';

class SplashScreenModule extends Module {
  @override
  void binds(Injector i) {
    // i.addSingleton(FeedReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const SplashScreenPage(),
    );
  }
}
