import 'dart:developer';

import 'package:flutter/material.dart';

class RouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('Push Route -> ${route.settings.name} - ${route.settings.toString()}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('Pop Route -> ${route.settings.name} - ${route.settings.toString()}');
  }
}
