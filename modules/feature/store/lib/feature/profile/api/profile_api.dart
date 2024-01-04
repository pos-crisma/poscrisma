import 'package:core/core.dart';

import '../model/profile.dart';

mixin ProfileAPI {
  static AsyncResult<ProfileDTO, ErrorInfo> getProfile() async {
    final BaseRequest client = Modular.get();

    return client
        .get('/auth/profile')
        .map(ProfileDTO.fromJson) //
        .map(_storage)
        .fold(Success.new, Failure.new);
  }

  static Future<ProfileDTO> _storage<T>(ProfileDTO data) async {
    final Storage storage = Modular.get();
    await storage.put('@profile', data.toRawJson());

    return data;
  }
}
