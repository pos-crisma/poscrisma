import 'package:flutter/widgets.dart';

interface class FamiliesState {
  final BuildContext context;
  bool isLoading = false;

  FamiliesState({
    required this.context,
  });
}
