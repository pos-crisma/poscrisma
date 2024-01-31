import 'package:core/core.dart';

import '../dto/team_response_dto.dart';

mixin TeamAPI {
  static AsyncResult<TeamResponseDto, ErrorInfo> get() async {
    final request = await baseRequest;

    return request
        .get('/game/team')
        .map(TeamResponseDto.fromJson)
        .map(_storage)
        .fold(Success.new, Failure.new);
  }

  static Future<TeamResponseDto> _storage<T>(TeamResponseDto data) async {
    await hiveStorage.put('@teams', data.toRawJson());

    return data;
  }
}
