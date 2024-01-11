import 'package:core/core.dart';
import 'package:create_user/create_user.dart';
import 'package:error/error.dart';
import 'package:feed/feed.dart';
import 'package:flutter/material.dart';

import 'package:authenticator/authenticator.dart';
import 'package:home/home.dart';
import 'package:invite/invite.dart';
import 'package:parish/parish.dart';
import 'package:setting/setting.dart';
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
    GoRoute(
      name: "home",
      path: '/home',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
    GoRoute(
      name: "setting",
      path: '/setting',
      builder: (BuildContext context, GoRouterState state) =>
          const SettingPage(),
    ),
  ],
);
