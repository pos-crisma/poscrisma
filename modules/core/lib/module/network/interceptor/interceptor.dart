import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/widgets.dart';

import '../../config/config_config.dart';
import '../../environment/environment.dart';

class NetworkInterceptor extends Interceptor {
  final Config config;

  int t1 = 0;
  int t2 = 0;

  NetworkInterceptor(this.config);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // config.defaultInterceptors?.forEach((key, value) {
    //   options.headers.addAll({"": ""});
    // });

    switch (config.env) {
      case Environment.qa:
      case Environment.develop:
        break;
      default:
    }

    t1 = DateTime.now().millisecondsSinceEpoch;
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    t2 = DateTime.now().millisecondsSinceEpoch;
    final response = err.response;
    if (response != null) {
      if (response.statusCode == 401) {
        await hiveStorage.delete("@token");
        showToast();
        moveToOtherPage();
      }
    }
    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    t2 = DateTime.now().millisecondsSinceEpoch;

    handler.next(response);
  }

  void showToast() {
    final context = navigatorKey.currentContext;

    if (context != null) {
      toastification.show(
        context: context,
        type: ToastificationType.success,
        showProgressBar: false,
        title: const Text(
          "Você precisa refazer seu login",
        ),
        autoCloseDuration: const Duration(seconds: 5),
      );
    }
  }

  void moveToOtherPage() {
    final context = navigatorKey.currentContext;

    if (context != null) {
      context.goNamed('splash_screen');
    }
  }
}
