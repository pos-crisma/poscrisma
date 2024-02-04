import 'package:authenticator/authenticator.dart';
import 'package:core/core.dart';
import 'package:create_user/create_user.dart';
import 'package:error/error.dart';
import 'package:feed/feed.dart';
import 'package:flutter/material.dart';
import 'package:game/game.dart';
import 'package:home/home.dart';
import 'package:invite/invite.dart';
import 'package:parish/parish.dart';
import 'package:room/room.dart';
import 'package:schedule/schedule.dart';
import 'package:setting/setting.dart';
import 'package:splash_screen/splash_screen.dart';
import 'package:store/store.dart';
import 'package:team/team.dart';
import 'package:warehouse/warehouse.dart';

final GoRouter appRouter = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: "/",
  observers: [
    RouterObserver(),
  ],
  routes: [
    GoRoute(
      name: "splash_screen",
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreenPage();
      },
      redirect: (BuildContext context, GoRouterState state) async =>
          await PublicGuard.canActivate(state),
    ),
    GoRoute(
      name: "auth",
      path: '/auth',
      builder: (BuildContext context, GoRouterState state) {
        return AuthPage();
      },
      redirect: (BuildContext context, GoRouterState state) async =>
          await PublicGuard.canActivate(state),
    ),
    GoRoute(
      name: "forget",
      path: '/forget',
      builder: (BuildContext context, GoRouterState state) {
        return AuthPage();
      },
      redirect: (BuildContext context, GoRouterState state) async =>
          await PublicGuard.canActivate(state),
    ),
    GoRoute(
      name: "invite",
      path: '/invite',
      builder: (BuildContext context, GoRouterState state) {
        return const InvitePage();
      },
      redirect: (BuildContext context, GoRouterState state) async =>
          await PublicGuard.canActivate(state),
    ),
    GoRoute(
      path: '/#/invite/:inviteCode',
      builder: (BuildContext context, GoRouterState state) {
        return InvitePage(
          inviteCode: state.pathParameters['inviteCode'] ?? "",
        );
      },
      redirect: (BuildContext context, GoRouterState state) async =>
          await PublicGuard.canActivate(state),
    ),
    GoRoute(
      path: '/invite/:inviteCode',
      builder: (BuildContext context, GoRouterState state) {
        return InvitePage(
          inviteCode: state.pathParameters['inviteCode'] ?? "",
        );
      },
      redirect: (BuildContext context, GoRouterState state) async =>
          await PublicGuard.canActivate(state),
    ),
    GoRoute(
      name: "feed",
      path: '/feed',
      builder: (BuildContext context, GoRouterState state) {
        return const FeedPage();
      },
      redirect: (BuildContext context, GoRouterState state) async =>
          await PublicGuard.canActivate(state),
    ),
    GoRoute(
      name: "parish",
      path: '/parish',
      builder: (BuildContext context, GoRouterState state) {
        return ParishPage(
          parishId: state.uri.queryParameters["parishId"] ?? "",
          type: state.uri.queryParameters["type"] ?? "",
          senderId: state.uri.queryParameters["senderId"] ?? "",
          invite: state.uri.queryParameters["invite"] ?? "",
        );
      },
      redirect: (BuildContext context, GoRouterState state) async =>
          await PublicGuard.canActivate(state),
    ),
    GoRoute(
      name: "create_user",
      path: '/create_user',
      builder: (BuildContext context, GoRouterState state) {
        return CreateUserPage(
          parishId: state.uri.queryParameters["parishId"] ?? "",
          type: state.uri.queryParameters["type"] ?? "",
          senderId: state.uri.queryParameters["senderId"] ?? "",
          invite: state.uri.queryParameters["invite"] ?? "",
        );
      },
      redirect: (BuildContext context, GoRouterState state) async =>
          await PublicGuard.canActivate(state),
    ),
    GoRoute(
      name: "error",
      path: '/error',
      builder: (BuildContext context, GoRouterState state) {
        return ErrorPage(
          title: state.uri.queryParameters["title"] ?? "",
          content: state.uri.queryParameters["content"] ?? "",
          backButton:
              state.uri.queryParameters["backButton"] as Function()? ?? () {},
          onPress: state.uri.queryParameters["onPress"] as Function()? ?? () {},
          isShowButton:
              state.uri.queryParameters["isShowButton"] as bool? ?? true,
          titleButton: state.uri.queryParameters["titleButton"] ?? "",
          enableColor: state.uri.queryParameters["enableColor"] as Color? ??
              Colors.transparent,
        );
      },
    ),
    GoRoute(
      name: "home",
      path: '/home',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "setting",
      path: '/setting',
      builder: (BuildContext context, GoRouterState state) =>
          const SettingPage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "room",
      path: '/room',
      builder: (BuildContext context, GoRouterState state) => const RoomPage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "room_type",
      path: '/room/type/:type',
      builder: (BuildContext context, GoRouterState state) => RoomTypePage(
        type: InviteUserType.values.byName(
          state.pathParameters["type"] ?? "Young",
        ),
      ),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "room_search",
      path: '/room_search',
      builder: (BuildContext context, GoRouterState state) =>
          const RoomSearchPage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "team",
      path: '/team',
      builder: (BuildContext context, GoRouterState state) => const TeamPage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "setting_config",
      path: '/setting_config',
      builder: (BuildContext context, GoRouterState state) =>
          const SettingsConfigPage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "game_manager",
      path: '/game_manager',
      builder: (BuildContext context, GoRouterState state) =>
          const DefaultPage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "config_access_manager",
      path: '/config_access_manager',
      builder: (BuildContext context, GoRouterState state) =>
          const DefaultPage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "nursing",
      path: '/nursing',
      builder: (BuildContext context, GoRouterState state) =>
          const NursingPage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "warehouse",
      path: '/warehouse',
      builder: (BuildContext context, GoRouterState state) =>
          const WarehousePage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "room_manager",
      path: '/room_manager',
      builder: (BuildContext context, GoRouterState state) =>
          const RoomManagerPage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "families",
      path: '/families',
      builder: (BuildContext context, GoRouterState state) =>
          const FamiliesPage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "schedule",
      path: '/schedule',
      builder: (BuildContext context, GoRouterState state) =>
          const SchedulePage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "game",
      path: '/game',
      builder: (BuildContext context, GoRouterState state) => const GamePage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "talent",
      path: '/talent',
      builder: (BuildContext context, GoRouterState state) =>
          const MatchTalent(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "treasure",
      path: '/treasure',
      builder: (BuildContext context, GoRouterState state) =>
          const MatchTreasure(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
    GoRoute(
      name: "result",
      path: '/result',
      builder: (BuildContext context, GoRouterState state) =>
          const ResultPage(),
      redirect: (BuildContext context, GoRouterState state) async =>
          await PrivateGuard.canActivate(state),
    ),
  ],
);

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
