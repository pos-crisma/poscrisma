import 'package:core/core.dart';

import '../feature/view/mascot_page.dart';

class MascotModule extends Module {
  @override
  void binds(Injector i) {
    // i.add(UserMobileReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const MascotPage(),
    );
  }
}
