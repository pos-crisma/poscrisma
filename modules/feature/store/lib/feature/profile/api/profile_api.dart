import 'package:core/core.dart';

import '../model/profile.dart';

mixin ProfileAPI {
  static AsyncResult<ProfileDTO, ErrorInfo> getProfile() async {
    return baseRequest
        .get('/auth/profile')
        .map(ProfileDTO.fromJson) //
        .map(_storage)
        .fold(Success.new, Failure.new);
  }

  static Future<ProfileDTO> _storage<T>(ProfileDTO data) async {
    await hiveStorage.put('@profile', data.toRawJson());

    return data;
  }
}
