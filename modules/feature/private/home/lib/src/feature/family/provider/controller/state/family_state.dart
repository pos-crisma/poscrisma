import 'package:flutter/cupertino.dart';
import 'package:store/store.dart';

import '../../dto/mascot_response_dto.dart';

interface class FamilyState {
  ProfileDTO? user;
  BuildContext? context;

  MascotsResponseDTO? mascotResponse;

  InviteResponseDTO? invite;

  FamilyInviteStatus status;

  FamilyState({
    this.status = FamilyInviteStatus.idle,
  });
}

enum FamilyInviteStatus { loading, success, failure, idle }
