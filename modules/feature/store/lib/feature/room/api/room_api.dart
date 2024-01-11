import 'package:core/core.dart';
import 'package:store/store.dart';

mixin RoomAPI {
  static AsyncResult<RoomSettingResponseDTO, ErrorInfo> getRooms() async {
    return baseRequest
        .get('/room-setting')
        .map(RoomSettingResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<RoomSettingResponseDTO, ErrorInfo> getRoomsByType(
    InviteUserType userType,
  ) async {
    return baseRequest
        .get('/room-setting/usertype/${userType.name}')
        .map(RoomSettingResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<Room, ErrorInfo> getRoomByUser(
    String userId,
  ) async {
    return baseRequest
        .get('/room-setting/user/$userId')
        .map(Room.fromJson)
        .fold(Success.new, Failure.new);
  }
}
