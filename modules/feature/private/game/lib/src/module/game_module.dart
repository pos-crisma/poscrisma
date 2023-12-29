import 'package:core/core.dart';

import '../view/game_page.dart';

class GameModule extends Module {
  @override
  void binds(Injector i) {
    // i.addSingleton(FeedReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const GamePage(),
    );
  }
}
