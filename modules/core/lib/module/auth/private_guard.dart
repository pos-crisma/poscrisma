import 'package:core/core.dart';

class PrivateGuard extends RouteGuard {
  PrivateGuard() : super(redirectTo: '/');

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    return Modular.get<LocalStorage>().isLogged;
  }
}
