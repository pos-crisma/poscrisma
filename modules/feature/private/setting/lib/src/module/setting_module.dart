import 'package:core/core.dart';

import '../feature/view/setting_page.dart';

class SettingModule extends Module {
  @override
  void binds(Injector i) {
    // i.add(UserMobileReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const SettingPage(),
    );
  }
}
