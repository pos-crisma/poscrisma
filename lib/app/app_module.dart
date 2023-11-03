import 'package:core/core.dart';
import 'package:feed/feed.dart';
import 'package:invite/invite.dart';
import 'package:poscrisma/app/splash_screen/splash_screen_page.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void routes(r) {
    r.child('/', child: (_) => const SplashScreenPage());
    r.module('/feed', module: FeedModule());
    r.module('/invite', module: InviteModule());

    r.redirect('/', to: '/feed/');
  }
}
