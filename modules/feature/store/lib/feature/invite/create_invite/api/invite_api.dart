import 'package:core/core.dart';

import '../dto/invite_request_dto.dart';
import '../dto/invite_response_dto.dart';

mixin InviteAPI {
  static AsyncResult<InviteResponseDTO, ErrorInfo> createInvite(
      InviteRequestDTO dto) async {
    final request = await baseRequest;

    return request
        .post('/invite', data: dto.toJson())
        .map(InviteResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
