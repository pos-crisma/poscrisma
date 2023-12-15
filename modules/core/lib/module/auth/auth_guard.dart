import 'package:core/core.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: '/');

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    return Modular.get<LocalStorage>().isLogged;
  }
}
