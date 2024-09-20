import 'package:poscrisma/index.dart';

class MemoryProvider {
  Memory _memory = Memory();

  MemoryProvider();

  Memory getMemory() {
    return _memory;
  }

  void setMemory(Memory memory) {
    _memory = memory;
  }
}
