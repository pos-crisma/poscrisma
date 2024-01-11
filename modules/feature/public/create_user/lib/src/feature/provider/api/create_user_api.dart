import 'package:core/core.dart';

import '../dto/create_user_request_dto.dart';
import '../dto/create_user_response_dto.dart';

mixin CreateUserApi {
  static AsyncResult<CreateUserResponseDTO, ErrorInfo> send(
      CreateUserRequestDTO dto, String invite) async {
    return baseRequest
        .post('/invite/accept/$invite', data: dto.toJson())
        .map(CreateUserResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
