import 'package:core/core.dart';

import '../model/parish_model.dart';

mixin ParishApi {
  static AsyncResult<Parish, NetworkError> getParishById(String parish) async {
    final BaseRequest client = Modular.get();

    return client
        .get('/parish/$parish')
        .map(Parish.fromJson)
        .fold(Success.new, Failure.new);
  }
}
