import 'package:core/core.dart';
import 'package:store/feature/invite/enum/invite_type.dart';

import '../dto/invites_dto.dart';

mixin ListInviteAPI {
  static AsyncResult<ListInviteByUserDTO, ErrorInfo> list(
    String userId,
    InviteUserType type,
  ) async {
    final request = await baseRequest;

    return request
        .get('/invite/user/${type.name}/$userId')
        .map(ListInviteByUserDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
