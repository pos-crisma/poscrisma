import 'package:core/core.dart';

import '../model/profile.dart';

mixin ProfileAPI {
  static AsyncResult<ProfileDTO, ErrorInfo> getProfile() async {
    final BaseRequest client = Modular.get();

    return client
        .get('/auth/profile')
        .map(ProfileDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
