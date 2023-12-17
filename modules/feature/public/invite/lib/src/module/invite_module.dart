import 'package:core/core.dart';

import '../feature/provider/controller/store/invite_store.dart';
import '../feature/view/invite_page.dart';


class InviteModule extends Module {
  @override
  void binds(Injector i) {
    i.add<InviteReducer>(
      InviteReducer.new,
      config: storeConfig(),
    );
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const InvitePage(),
      transition: TransitionType.noTransition,
    );
  }
}
