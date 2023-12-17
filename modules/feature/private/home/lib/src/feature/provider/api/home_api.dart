import 'package:core/core.dart';

import '../dto/user_session_dto.dart';

mixin HomeApi {
  static AsyncResult<UserSessionDTO, ErrorInfo> getUserDataBySession() async {
    final BaseRequest client = Modular.get();

    return client
        .get('/auth/session')
        .map(UserSessionDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
