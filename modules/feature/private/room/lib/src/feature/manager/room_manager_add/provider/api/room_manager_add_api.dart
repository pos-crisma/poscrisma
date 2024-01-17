import 'package:core/core.dart';

import '../dto/create_room_dto.dart';

mixin RoomManagerAddApi {
  static AsyncResult<DefaultResponseDTO, ErrorInfo> send(
      CreateRoomDTO dto) async {
    final request = await baseRequest;

    return request
        .post(
          '/room-setting/c1b4aee3-3af0-43cc-9806-5bca3ad74901',
          data: dto.toJson(),
        )
        .map(DefaultResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
