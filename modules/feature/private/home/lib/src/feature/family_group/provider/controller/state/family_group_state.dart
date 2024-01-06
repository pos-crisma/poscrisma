import 'package:flutter/cupertino.dart';
import 'package:store/store.dart';

interface class FamilyGroupState {
  ProfileDTO? user;
  BuildContext? context;

  InviteResponseDTO? invite;
  ListInviteByUserDTO? listInvite;

  FamilyGroupInviteStatus status;

  FamilyGroupState({
    this.status = FamilyGroupInviteStatus.idle,
  });
}

enum FamilyGroupInviteStatus { loading, success, failure, idle }
