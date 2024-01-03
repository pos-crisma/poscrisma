import 'package:core/core.dart';

import '../feature/provider/controller/store/user_mobile_reducer.dart';
import '../feature/provider/model/user_type.dart';
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
        invite: r.args.data["invite"],
      ),
    );
  }
}
