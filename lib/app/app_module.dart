import 'package:core/core.dart';

// * Error
import 'package:error/error.dart';

// * Public
import 'package:authenticator/authenticator.dart';
import 'package:create_user/create_user.dart';
import 'package:feed/feed.dart';
import 'package:invite/invite.dart';
import 'package:parish/parish.dart';

// * Private
import 'package:home/home.dart';
import 'package:generate_invite/generate_invite.dart';
import 'package:mascot/mascot.dart';
import 'package:game/game.dart';
import 'package:godparent/godparent.dart';
import 'package:room/room.dart';
import 'package:rule/rule.dart';
import 'package:schedule/schedule.dart';
import 'package:setting/setting.dart';
import 'package:splash_screen/splash_screen.dart';
import 'package:store/module/store_module.dart';
import 'package:team/team.dart';
import 'package:warehouse/warehouse.dart';
import 'package:young/young.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
        StoreModule(),
      ];

  @override
  void routes(r) {
    r.module('/error', module: ErrorModule());

    r.module(
      '/splash_screen',
      module: SplashScreenModule(),
      guards: [PublicGuard()],
    );
    r.module(
      '/feed',
      module: FeedModule(),
      guards: [PublicGuard()],
    );
    r.module(
      '/invite',
      module: InviteModule(),
      guards: [PublicGuard()],
    );
    r.module(
      '/auth',
      module: AuthModule(),
      guards: [PublicGuard()],
    );
    r.module(
      '/parish',
      module: ParishModule(),
      guards: [PublicGuard()],
    );
    r.module(
      '/create_user',
      module: CreateUserModule(),
      guards: [PublicGuard()],
    );

    r.module(
      '/home',
      module: HomeModule(),
      guards: [PrivateGuard()],
    );
    r.module(
      '/generate_invite',
      module: GenerateInviteModule(),
      guards: [PrivateGuard()],
    );
    r.module(
      '/young',
      module: YoungModule(),
      guards: [PrivateGuard()],
    );
    r.module(
      '/godparent',
      module: GodParentModule(),
      guards: [PrivateGuard()],
    );
    r.module(
      '/game',
      module: GameModule(),
      guards: [PrivateGuard()],
    );
    r.module(
      '/rule',
      module: RuleModule(),
      guards: [PrivateGuard()],
    );
    r.module(
      '/schedule',
      module: ScheduleModule(),
      guards: [PrivateGuard()],
    );
    r.module(
      '/warehouse',
      module: WarehouseModule(),
      guards: [PrivateGuard()],
    );
    r.module(
      '/room',
      module: RoomModule(),
      guards: [PrivateGuard()],
    );
    r.module(
      '/setting',
      module: SettingModule(),
      guards: [PrivateGuard()],
    );
    r.module(
      '/mascot',
      module: MascotModule(),
      guards: [PrivateGuard()],
    );
    r.module(
      '/team',
      module: TeamModule(),
      guards: [PrivateGuard()],
    );

    r.redirect('/', to: '/splash_screen/');
  }
}
