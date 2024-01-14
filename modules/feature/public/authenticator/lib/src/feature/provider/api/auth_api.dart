import 'package:core/core.dart';

import '../dto/auth_request_dto.dart';
import '../dto/auth_response_dto.dart';

mixin AuthApi {
  static AsyncResult<AuthResponseDTO, ErrorInfo> send(
      AuthRequestDTO dto) async {
    final request = await baseRequest;

    return request
        .post('/auth/login', data: dto.toJson())
        .map(AuthResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
