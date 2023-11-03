import 'package:core/core.dart';

import '../view/parish_page.dart';

class ParishModule extends Module {
  @override
  void binds(Injector i) {
    // i.addSingleton(FeedReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const ParishPage(),
    );
  }
}
