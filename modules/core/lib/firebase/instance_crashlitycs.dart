import 'dart:developer';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

void crashlitycsListener() {
  FlutterError.onError = (errorDetails) {
    if (kDebugMode) {
      log(errorDetails.toString(), name: "Log -> FlutterError.onError");
    } else {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    }
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    if (kDebugMode) {
      log(stack.toString(), name: "Log -> PlatformDispatcher.instance.onError");
    } else {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    }
    return true;
  };
}
