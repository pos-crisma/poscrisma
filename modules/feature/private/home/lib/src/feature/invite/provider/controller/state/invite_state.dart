import 'package:flutter/cupertino.dart';
import 'package:store/store.dart';

interface class InviteState {
  ProfileDTO? user;
  late BuildContext context;

  ViewStatus status;

  int inviteSelector;
  InviteResponseDTO? invite;
  ListInviteByUserDTO? listInvites;
  bool isGuest;

  InviteState({
    this.status = ViewStatus.idle,
    this.inviteSelector = 1,
    this.isGuest = false,
  });
}

enum ViewStatus { loading, success, failure, idle }
