import 'package:core/core.dart';
import 'package:poscrisma/app/home/module/home_module.dart';
import 'package:poscrisma/app/splash_screen/splash_screen_page.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void routes(r) {
    r.child('/', child: (_) => const SplashScreenPage());
    r.module('/home', module: HomeModule());

    r.redirect('/', to: '/home/');
  }
}
