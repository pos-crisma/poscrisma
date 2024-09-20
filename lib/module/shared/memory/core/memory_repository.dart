import 'package:get_it/get_it.dart';
import 'package:poscrisma/index.dart';

class MemoryRepository {
  final MemoryProvider memoryProvider = GetIt.instance.get<MemoryProvider>();

  MemoryRepository();

  Memory get() {
    return memoryProvider.getMemory();
  }
}
