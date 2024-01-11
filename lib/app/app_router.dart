import 'package:core/core.dart';
import 'package:create_user/create_user.dart';
import 'package:error/error.dart';
import 'package:feed/feed.dart';
import 'package:flutter/material.dart';

import 'package:authenticator/authenticator.dart';
import 'package:invite/invite.dart';
import 'package:parish/parish.dart';
import 'package:splash_screen/splash_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      name: "splash_screen",
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreenPage();
      },
    ),
    GoRoute(
      name: "auth",
      path: '/auth',
      builder: (BuildContext context, GoRouterState state) {
        return AuthPage();
      },
    ),
    GoRoute(
      name: "invite",
      path: '/invite',
      builder: (BuildContext context, GoRouterState state) {
        return const InvitePage();
      },
    ),
    GoRoute(
      path: '/invite/:inviteCode',
      builder: (BuildContext context, GoRouterState state) {
        return InvitePage(
          inviteCode: state.pathParameters['inviteCode'] ?? "",
        );
      },
    ),
    GoRoute(
      name: "feed",
      path: '/feed',
      builder: (BuildContext context, GoRouterState state) {
        return const FeedPage();
      },
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
  ],
);

// r.module('/error', module: ErrorModule());

//     r.module(
//       '/splash_screen',
//       module: SplashScreenModule(),
//       guards: [PublicGuard()],
//     );
//     r.module(
//       '/feed',
//       module: FeedModule(),
//       guards: [PublicGuard()],
//     );
//     r.module(
//       '/invite',
//       module: InviteModule(),
//       guards: [PublicGuard()],
//     );
//     r.module(
//       '/auth',
//       module: AuthModule(),
//       guards: [PublicGuard()],
//     );
//     r.module(
//       '/parish',
//       module: ParishModule(),
//       guards: [PublicGuard()],
//     );
//     r.module(
//       '/create_user',
//       module: CreateUserModule(),
//       guards: [PublicGuard()],
//     );

//     r.module(
//       '/home',
//       module: HomeModule(),
//       guards: [PrivateGuard()],
//     );
//     r.module(
//       '/game',
//       module: GameModule(),
//       guards: [PrivateGuard()],
//     );
//     r.module(
//       '/rule',
//       module: RuleModule(),
//       guards: [PrivateGuard()],
//     );
//     r.module(
//       '/schedule',
//       module: ScheduleModule(),
//       guards: [PrivateGuard()],
//     );
//     r.module(
//       '/warehouse',
//       module: WarehouseModule(),
//       guards: [PrivateGuard()],
//     );
//     r.module(
//       '/room',
//       module: RoomModule(),
//       guards: [PrivateGuard()],
//     );
//     r.module(
//       '/setting',
//       module: SettingModule(),
//       guards: [PrivateGuard()],
//     );
//     r.module(
//       '/team',
//       module: TeamModule(),
//       guards: [PrivateGuard()],
//     );
//     r.module(
//       '/profile',
//       module: profile.ProfileModule(),
//       guards: [PrivateGuard()],
//     );
//     r.module(
//       '/config',
//       module: ConfigModule(),
//       guards: [PrivateGuard()],
//     );

//     r.redirect('/', to: '/splash_screen/');