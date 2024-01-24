import 'package:flutter/widgets.dart';

interface class NursingState {
  final BuildContext context;
  bool isLoading = false;

  NursingState({
    required this.context,
  });
}
