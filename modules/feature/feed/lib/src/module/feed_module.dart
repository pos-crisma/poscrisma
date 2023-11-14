import 'package:core/core.dart';

import '../feature/content/view/content_page.dart';
import '../feature/feed/view/feed_page.dart';

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
    r.child(
      '/content',
      child: (context) => const ContentPage(),
    );
  }
}
