import 'package:core/core.dart';

import '../dto/detail_group_dto.dart';

mixin GroupAPI {
  static AsyncResult<DetailGroupDto, ErrorInfo> get(String id) async {
    final request = await baseRequest;

    return request
        .get('/group/$id')
        .map(DetailGroupDto.fromJson) //
        .map(_storage)
        .fold(Success.new, Failure.new);
  }

  static Future<DetailGroupDto> _storage<T>(DetailGroupDto data) async {
    await hiveStorage.put('@group_${data.groupId}', data.toRawJson());

    return data;
  }
}
