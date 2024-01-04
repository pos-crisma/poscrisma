import 'package:core/core.dart';

import '../feature/room/provider/controller/store/room_store.dart';
import '../feature/room/view/room_page.dart';
import '../feature/room_search/provider/controller/store/room_search_store.dart';
import '../feature/room_search/view/room_search_page.dart';
import '../feature/room_type/provider/controller/store/room_type_store.dart';
import '../feature/room_type/view/room_type_page.dart';

class RoomModule extends Module {
  @override
  void binds(Injector i) {
    i.add(RoomReducer.new);
    i.add(RoomTypeReducer.new);
    i.add(RoomSearchReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const RoomPage(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      "/search",
      child: (_) => const RoomSearchPage(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      "/type",
      child: (_) => const RoomTypePage(),
      transition: TransitionType.fadeIn,
    );
  }
}
