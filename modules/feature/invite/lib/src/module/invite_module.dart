import 'package:core/core.dart';
import 'package:invite/src/feature/user/store/user_mobile_reducer.dart';

import '../feature/invite/provider/feature/store/invite_store.dart';
import '../feature/invite/view/invite_page.dart';
import '../feature/user/view/user_page.dart';

class InviteModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(UserMobileReducer.new);
    i.addSingleton(InviteReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const InvitePage(),
    );

    r.child(
      "/user",
      child: (_) => const UserPage(),
    );
  }
}
