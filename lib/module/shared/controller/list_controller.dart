import 'package:poscrisma/index.dart';
import 'package:signals/signals_flutter.dart';

abstract class ListController<T> extends LoadableController {
  final items = signal<List<T>>([], debugLabel: "items", autoDispose: false);

  void addItem(T item) {
    items.set([...items.value, item]);
  }

  void removeItem(T item) {
    items.set(items.value.where((element) => element != item).toList());
  }

  void clearItems() {
    items.set([]);
  }
}
