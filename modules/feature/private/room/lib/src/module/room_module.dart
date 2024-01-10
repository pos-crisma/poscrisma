import 'package:core/core.dart';
import 'package:store/store.dart';

import '../feature/rooms/provider/controller/store/room_store.dart';
import '../feature/rooms/screen/room/view/room_page.dart';
import '../feature/rooms/screen/room_search/view/room_search_page.dart';
import '../feature/rooms/screen/room_type/view/room_type_page.dart';

class RoomModule extends Module {
  @override
  void binds(Injector i) {
    i.add(RoomReducer.new);
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
      "/type/:type",
      child: (_) => RoomTypePage(
        type: InviteUserType.values.byName(
          r.args.params['type'],
        ),
      ),
      transition: TransitionType.fadeIn,
    );
  }
}
