import 'package:core/core.dart';

import '../feature/view/team_page.dart';

class TeamModule extends Module {
  @override
  void binds(Injector i) {
    // i.add(UserMobileReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const TeamPage(),
    );
  }
}
