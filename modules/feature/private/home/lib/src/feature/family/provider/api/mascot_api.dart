import 'package:core/core.dart';

import '../dto/mascot_response_dto.dart';

mixin MascotApi {
  static AsyncResult<MascotsResponseDTO, ErrorInfo> get(String userId) async {
    final BaseRequest client = Modular.get();

    return client
        .get('/mascot/user/$userId')
        .map(MascotsResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
