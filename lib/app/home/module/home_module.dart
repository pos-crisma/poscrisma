import 'package:core/core.dart';

import '../provider/reducer/home_reducer.dart';
import '../provider/store/home_store.dart';
import '../view/home_page.dart';

class HomeModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => HomeStore(
        notifier: HomeReducer(),
        child: const HomePage(),
      ),
    );
  }
}
