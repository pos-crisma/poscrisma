import 'package:core/core.dart';
import 'package:store/feature/hosted/dto/hosted_request_dto.dart';

import '../dto/hosted_user_dto.dart';

mixin HostedUserAPI {
  static AsyncResult<HostedUserDTO, ErrorInfo> filterHostedUserByTypeAndGender(
      HostedRequestDTO requestDto, bool isHosted) async {
    final request = await baseRequest;

    return request
        .post('/user/hosted/$isHosted', data: requestDto.toJson())
        .map(HostedUserDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
