import 'dart:async';
import 'package:go_router/go_router.dart';
import 'package:poscrisma/index.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SplashController {
  final repository = GetIt.instance.get<SplashRepository>();

  void init(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        context.go("/login");
      },
    );
  }

  void dispose() {}
}
