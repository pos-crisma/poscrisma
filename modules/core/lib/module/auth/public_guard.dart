import 'package:core/core.dart';

class PublicGuard extends RouteGuard {
  PublicGuard() : super(redirectTo: '/home/');

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    final storage = Modular.get<Storage>();
    final token = await storage.get<String>('@token');

    return token == null;
  }
}
