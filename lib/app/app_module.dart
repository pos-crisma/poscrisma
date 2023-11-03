import 'package:authenticator/authenticator.dart';
import 'package:core/core.dart';
import 'package:feed/feed.dart';
import 'package:godparent/godparent.dart';
import 'package:invite/invite.dart';
import 'package:parish/parish.dart';
import 'package:poscrisma/app/splash_screen/splash_screen_page.dart';
import 'package:young/young.dart';

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
    r.module('/auth', module: AuthModule());
    r.module('/parish', module: ParishModule());
    r.module('/young', module: YoungModule());
    r.module('/godparent', module: GodParentModule());

    r.redirect('/', to: '/feed/');
  }
}
