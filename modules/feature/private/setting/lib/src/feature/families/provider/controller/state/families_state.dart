import 'package:flutter/widgets.dart';

import '../../dto/families_response_dto.dart';

interface class FamiliesState {
  final BuildContext context;
  bool isLoading = false;

  List<Family>? families;

  FamiliesState({
    required this.context,
  });
}
