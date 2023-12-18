import 'package:core/core.dart';

import '../feature/view/rule_page.dart';

class RuleModule extends Module {
  @override
  void binds(Injector i) {
    // i.add(UserMobileReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const RulePage(),
    );
  }
}
