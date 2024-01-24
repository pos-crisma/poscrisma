import 'package:core/core.dart';
import 'package:store/feature/invite/enum/invite_type.dart';
import 'package:store/feature/user/model/user.dart';

import '../dto/list_user_dto.dart';

mixin UserAPI {
  static AsyncResult<ListUserDTO, ErrorInfo> filterUserByTypeAndGender(
    InviteUserType inviteUserType,
    UserGender gender,
  ) async {
    final request = await baseRequest;

    return request
        .get('/user/${inviteUserType.name}/${gender.name}')
        .map(ListUserDTO.fromJson)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<ListUserDTO, ErrorInfo> filterUserByType(
    InviteUserType inviteUserType,
    UserGender gender,
  ) async {
    final request = await baseRequest;

    return request
        .get('/user/type/${inviteUserType.name}')
        .map(ListUserDTO.fromJson)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<ListUserDTO, ErrorInfo> listUser() async {
    final request = await baseRequest;

    return request
        .get('/user')
        .map(ListUserDTO.fromJson)
        .fold(Success.new, Failure.new);
  }

  static AsyncResult<DefaultResponseDTO, ErrorInfo> activeYoung(
      String id, bool isActive) async {
    final request = await baseRequest;

    return request
        .put('/user/$id', data: {
          "isActive": isActive,
        })
        .map(DefaultResponseDTO.fromJson)
        .fold(Success.new, Failure.new);
  }
}
