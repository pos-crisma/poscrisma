import 'package:go_router/go_router.dart';

import '../../container/container.dart';

class PrivateGuard {
  static Future<String?> canActivate(GoRouterState state) async {
    final token = await hiveStorage.get<String>('@token');
    // final route = state.matchedLocation;

    if (token != null) {
      return null;
    } else {
      return '/'; // return "null" to display the intended route without redirecting
    }
  }
}
