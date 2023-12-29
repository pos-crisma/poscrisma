import 'package:core/core.dart';

import '../model/user.dart';

mixin UserSessionAPI {
  static AsyncResult<User, ErrorInfo> getUserDataBySession() async {
    final BaseRequest client = Modular.get();

    return client
        .post('/auth/session')
        .map(User.fromJson)
        .fold(Success.new, Failure.new);
  }
}
