import 'package:core/core.dart';

import '../view/young_page.dart';

class YoungModule extends Module {
  @override
  void binds(Injector i) {
    // i.addSingleton(FeedReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const YoungPage(),
    );
  }
}
