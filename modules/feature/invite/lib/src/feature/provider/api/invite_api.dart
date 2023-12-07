import 'package:core/core.dart';

import '../model/invite_model.dart';

mixin InviteApi {
  static AsyncResult<Invite, NetworkError> invite(String invite) async {
    final BaseRequest client = Modular.get();

    return client
        .get('/invite/$invite')
        .map(Invite.fromJson)
        .fold(Success.new, Failure.new);
  }
}
