import 'package:core/core.dart';

import '../feature/view/error_page.dart';

class ErrorModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => ErrorPage(
        title: r.args.data["title"],
        content: r.args.data["content"],
        backButton: r.args.data["backButton"],
        onPress: r.args.data["onPress"],
      ),
      transition: TransitionType.downToUp,
    );
  }
}
