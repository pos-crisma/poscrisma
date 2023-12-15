import 'package:core/core.dart';

///
import 'package:authenticator/authenticator.dart';
import 'package:create_user/create_user.dart';
import 'package:error/error.dart';
import 'package:feed/feed.dart';
import 'package:game/game.dart';
import 'package:godparent/godparent.dart';
import 'package:invite/invite.dart';
import 'package:parish/parish.dart';
import 'package:splash_screen/splash_screen.dart';
import 'package:young/young.dart';
import 'package:home/home.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void routes(r) {
    r.module('/error', module: ErrorModule());
    
    r.module('/splash_screen', module: SplashScreenModule());
    r.module('/feed', module: FeedModule());
    r.module('/invite', module: InviteModule());
    r.module('/auth', module: AuthModule());
    r.module('/parish', module: ParishModule());
    r.module('/create_user', module: CreateUserModule());

    
    r.module('/home', module: HomeModule(), guards: [AuthGuard()]);
    r.module('/young', module: YoungModule());
    r.module('/godparent', module: GodParentModule());
    r.module('/game', module: GameModule());

    r.redirect('/', to: '/splash_screen/');
  }
}
