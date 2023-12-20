import 'package:core/core.dart';

class PublicGuard extends RouteGuard {
  PublicGuard() : super(redirectTo: '/home');

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    return Modular.get<LocalStorage>().isLogged == false;
  }
}
