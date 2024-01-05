import 'package:flutter/cupertino.dart';
import 'package:store/store.dart';

interface class FamilyState {
  ProfileDTO? user;
  BuildContext? context;

  InviteResponseDTO? invite;

  FamilyInviteStatus status;

  FamilyState({
    this.status = FamilyInviteStatus.idle,
  });
}

enum FamilyInviteStatus { loading, success, failure, idle }
