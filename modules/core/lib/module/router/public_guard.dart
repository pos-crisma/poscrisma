import 'package:go_router/go_router.dart';

import '../../container/container.dart';

class PublicGuard {
  static Future<String?> canActivate(GoRouterState state) async {
    final token = await hiveStorage.get<String>('@token');
    // final route = state.matchedLocation;
    // print("Token isAlive: $token");
    // print("Route: $route");

    if (token != null) {
      return '/home';
    } else {
      return null; // return "null" to display the intended route without redirecting
    }
  }
}
