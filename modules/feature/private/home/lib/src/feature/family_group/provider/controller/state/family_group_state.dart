import 'package:flutter/cupertino.dart';
import 'package:home/src/feature/family_group/provider/dto/detail_group_dto.dart';
import 'package:store/store.dart';

interface class FamilyGroupState {
  ProfileDTO? user;
  late BuildContext context;

  InviteResponseDTO? invite;
  ListInviteByUserDTO? listInvite;
  DetailGroupDto? detailGroup;

  FamilyGroupInviteStatus status;

  bool isLoading = false;

  FamilyGroupState({
    this.status = FamilyGroupInviteStatus.idle,
  });
}

enum FamilyGroupInviteStatus { loading, success, failure, idle }
