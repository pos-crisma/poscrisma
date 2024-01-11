import 'package:core/core.dart';

import '../dto/create_mascot_request_dto.dart';
import '../dto/create_mascot_response_dto.dart';

mixin CreateMascotApi {
  static AsyncResult<CreateMascotResponseDTO, ErrorInfo> send(
      CreateMascotRequestDTO dto, String userId) async {
    return baseRequest
        .post('/mascot/$userId', data: dto.toJson())
        .map(CreateMascotResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
