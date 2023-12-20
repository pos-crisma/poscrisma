import 'package:core/core.dart';

import '../feature/view/generate_invite_page.dart';

class GenerateInviteModule extends Module {
  @override
  void binds(Injector i) {
    // i.add(UserMobileReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const GenerateInvitePage(),
    );
  }
}
