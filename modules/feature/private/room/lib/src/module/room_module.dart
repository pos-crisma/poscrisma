import 'package:core/core.dart';

import '../feature/room/view/room_page.dart';
import '../feature/room_search/view/room_search_page.dart';
import '../feature/room_type/view/room_type_page.dart';

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
    r.child(
      "/search",
      child: (_) => const RoomSearchPage(),
    );
    r.child(
      "/type",
      child: (_) => const RoomTypePage(),
    );
  }
}
