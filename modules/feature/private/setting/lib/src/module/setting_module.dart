import 'package:core/core.dart';
import 'package:setting/src/feature/provider/controller/store/setting_store.dart';

import '../feature/view/setting_page.dart';

class SettingModule extends Module {
  @override
  void binds(Injector i) {
    i.add(SettingReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const SettingPage(),
      transition: TransitionType.fadeIn,
    );
  }
}
