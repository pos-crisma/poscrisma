import 'package:poscrisma/index.dart';
import 'package:signals/signals_flutter.dart';

abstract class LoadableController {
  final isLoading = signal(false, debugLabel: "isLoading", autoDispose: false);
  final error = signal<String?>(null, debugLabel: "error", autoDispose: false);
  final serviceException =
      signal<ServiceException?>(null, debugLabel: "error", autoDispose: false);
}
