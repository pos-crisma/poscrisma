import 'package:core/core.dart';
import 'package:create_user/src/feature/controller/model/user_type.dart';

import '../feature/controller/store/user_mobile_reducer.dart';
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
      child: (_) => UserPage(
        parishId: r.args.data["parishId"],
        spenderId: r.args.data["senderId"],
        type: UserType.values.byName(r.args.data["type"]),
      ),
    );
  }
}
