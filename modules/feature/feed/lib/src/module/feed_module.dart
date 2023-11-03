import 'package:core/core.dart';

import '../view/feed_page.dart';

class FeedModule extends Module {
  @override
  void binds(Injector i) {
    // i.addSingleton(FeedReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const FeedPage(),
    );
  }
}
