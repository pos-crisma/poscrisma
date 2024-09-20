import 'package:poscrisma/index.dart';
import 'package:go_router/go_router.dart';

class {{name.pascalCase()}}Router {
  static const root = '/{{name.snakeCase()}}';

  static GoRoute routes() {
    return GoRoute(
      path: root.substring(1),
      builder: (context, state) {
        return const {{name.pascalCase()}}Page();
      },
    );
  }
}
