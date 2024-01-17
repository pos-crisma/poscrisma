import 'package:core/core.dart';

mixin RoomManagerAPI {
  static AsyncResult<DefaultResponseDTO, ErrorInfo> get() async {
    final request = await baseRequest;

    return request
        .get('/games')
        .map(DefaultResponseDTO.fromJson) //
        .fold(Success.new, Failure.new);
  }
}
