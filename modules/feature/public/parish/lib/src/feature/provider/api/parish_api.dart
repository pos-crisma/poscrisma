import 'package:core/core.dart';

import '../model/parish_model.dart';

mixin ParishApi {
  static AsyncResult<Parish, ErrorInfo> getParishById(String parish) async {
    final request = await baseRequest;

    return request
        .get('/parish/$parish')
        .map(Parish.fromJson)
        .fold(Success.new, Failure.new);
  }
}
