import 'package:core/core.dart';

import '../dto/invite_request_dto.dart';
import '../dto/invite_response_dto.dart';

mixin InviteAPI {
  static AsyncResult<InviteResponseDTO, ErrorInfo> createInvite(
      InviteRequestDTO dto) async {
    final BaseRequest client = Modular.get();

    return client
        .post('/invite', data: dto.toJson())
        .map(InviteResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
