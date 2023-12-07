import 'package:core/core.dart';

import '../feature/store/user_mobile_reducer.dart';
import '../feature/view/user_page.dart';

class CreateUserModule extends Module {
  @override
  void binds(Injector i) {
    i.add<UserMobileReducer>(
      UserMobileReducer.new,
      config: storeConfig(),
    );
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const UserPage(),
    );
  }
}
