import 'package:core/core.dart';

import '../view/godparent_page.dart';

class GodParentModule extends Module {
  @override
  void binds(Injector i) {
    // i.addSingleton(FeedReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const GodParentPage(),
    );
  }
}
