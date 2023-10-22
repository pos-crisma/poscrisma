import 'package:core/core.dart';

import '../features/task/reducer/task_reducer.dart';
import '../features/task/view/task_page.dart';
import '../provider/reducer/home_reducer.dart';
import '../view/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(TaskReducer.new);
    i.addSingleton(HomeReducer.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const HomePage(),
    );

    r.child(
      "/task",
      child: (_) => const TaskPage(),
    );
  }
}
