import 'package:core/core.dart';
import 'package:get_it/get_it.dart';

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
        final Storage storage = GetIt.I.get();

        await storage.delete("@token");
        // Modular.to.navigate('/');
      }
    }
    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    t2 = DateTime.now().millisecondsSinceEpoch;

    handler.next(response);
  }
}
