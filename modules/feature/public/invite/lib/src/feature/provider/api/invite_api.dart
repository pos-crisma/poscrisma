import 'package:core/core.dart';

import '../model/invite_model.dart';

mixin InviteApi {
  static AsyncResult<Invite, ErrorInfo> invite(String invite) async {
    final request = await baseRequest;

    return request
        .get('/invite/$invite')
        .map(Invite.fromJson)
        .fold(Success.new, Failure.new);
  }
}
