import 'package:core/core.dart';

import '../feature/view/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    // i.add(UserMobileReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const HomePage(),
      transition: TransitionType.noTransition,
    );
  }
}
