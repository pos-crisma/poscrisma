import 'package:core/core.dart';
import 'package:store/store.dart';

mixin RoomAPI {
  static AsyncResult<RoomSettingResponseDTO, ErrorInfo> getRooms() async {
    final request = await baseRequest;

    return request
        .get('/room-setting')
        .map(RoomSettingResponseDTO.fromJson)
        .map(_storageRooms)
        .fold(Success.new, Failure.new);
  }

  static Future<RoomSettingResponseDTO> _storageRooms<T>(
      RoomSettingResponseDTO data) async {
    await hiveStorage.put('@room-setting(get-rooms)', data.toRawJson());

    return data;
  }

  static AsyncResult<RoomSettingResponseDTO, ErrorInfo> getRoomsByType(
    InviteUserType userType,
  ) async {
    final request = await baseRequest;

    return request
        .get('/room-setting/usertype/${userType.name}')
        .map(RoomSettingResponseDTO.fromJson)
        .map(_storageRoomsByType)
        .fold(Success.new, Failure.new);
  }

  static Future<RoomSettingResponseDTO> _storageRoomsByType<T>(
      RoomSettingResponseDTO data) async {
    await hiveStorage.put('@room-setting(get-rooms-by-type)', data.toRawJson());

    return data;
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

  static AsyncResult<Room, ErrorInfo> getRoomById(
    String roomId,
  ) async {
    final request = await baseRequest;

    return request
        .get('/room-setting/$roomId')
        .map(Room.fromJson)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<DefaultResponseDTO, ErrorInfo> updateRoom(
    Room room,
  ) async {
    final request = await baseRequest;

    return request
        .patch('/room-setting/${room.roomId}', data: room.toJson())
        .map(DefaultResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
