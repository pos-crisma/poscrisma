import 'package:core/core.dart';
import 'package:store/store.dart';

mixin RoomAPI {
  static AsyncResult<RoomSettingResponseDTO, ErrorInfo> getRooms() async {
    final request = await baseRequest;

    return request
        .get('/room-setting')
        .map(RoomSettingResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<RoomSettingResponseDTO, ErrorInfo> getRoomsByType(
    InviteUserType userType,
  ) async {
    final request = await baseRequest;

    return request
        .get('/room-setting/usertype/${userType.name}')
        .map(RoomSettingResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<Room, ErrorInfo> getRoomByUser(
    String userId,
  ) async {
    final request = await baseRequest;

    return request
        .get('/room-setting/user/$userId')
        .map(Room.fromJson)
        .fold(Success.new, Failure.new);
  }
}
