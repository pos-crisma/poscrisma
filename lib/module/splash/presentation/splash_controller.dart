import 'dart:async';
import 'package:go_router/go_router.dart';
import 'package:loggy/loggy.dart';
import 'package:poscrisma/index.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SplashController {
  final repository = GetIt.instance.get<SplashRepository>();

  void init(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () async {
      try {
        final user = await repository.getUser();
        if (!context.mounted) return;

        context.go(AppRouter.home);
        if (user.firstName != null) {
          // TODO: Go to Home
        } else {
          // TODO: Go to Update
        }
      } catch (e) {
        if (!context.mounted) return;
        logInfo("Algo aconteceu: $e");
        context.go(AppRouter.login);
      }
    });
  }

  void dispose() {}
}
