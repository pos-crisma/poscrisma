import 'package:core/core.dart';

import '../feature/provider/controller/store/home_store.dart';
import '../feature/view/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.add<HomeReducer>(
      HomeReducer.new,
      config: storeConfig(),
    );
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
