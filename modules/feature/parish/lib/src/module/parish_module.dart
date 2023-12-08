import 'package:core/core.dart';
import 'package:parish/src/feature/provider/controller/store/parish_store.dart';

import '../feature/view/parish_page.dart';

class ParishModule extends Module {
  @override
  void binds(Injector i) {
    i.add<ParishReducer>(
      ParishReducer.new,
      config: storeConfig(),
    );
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => ParishPage(
        parishId: r.args.data["parishId"],
        senderId: r.args.data["senderId"],
        type: r.args.data["type"],
      ),
      transition: TransitionType.leftToRightWithFade,
    );
  }
}
