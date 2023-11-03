import 'package:core/core.dart';

import '../view/invite_page.dart';

class InviteModule extends Module {
  @override
  void binds(Injector i) {
    // i.addSingleton(FeedReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const InvitePage(),
    );
  }
}
