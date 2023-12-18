import 'package:core/core.dart';

import '../feature/view/room_page.dart';

class RoomModule extends Module {
  @override
  void binds(Injector i) {
    // i.add(UserMobileReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const RoomPage(),
    );
  }
}
