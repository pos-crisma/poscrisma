import 'package:core/store/reduce.dart';

class HomeState {
  final String title;

  HomeState(this.title);
}

enum HomeAction {
  none,
  onAppear,
  onClose,
  newTitle,
}

class HomeStore extends Reduce<HomeState, HomeAction> {
  HomeStore(super.initialState);

  static HomeStore get builder => HomeStore(HomeState(""));

  @override
  void reduce(action, value) {
    switch (action) {
      case HomeAction.newTitle:
        state = HomeState(value);

        break;
      case HomeAction.none:
        break;
      case HomeAction.onAppear:
        state = HomeState(value);
        break;
      case HomeAction.onClose:
        break;
    }
  }
}
