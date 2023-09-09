import 'package:core/store/reduce.dart';

class HomeState {
  final int value;

  HomeState(this.value);
}

enum HomeAction {
  add,
  sub,
}

class HomeStore extends Reduce<HomeState, HomeAction> {
  HomeStore(super.initialState);

  static HomeStore get builder => HomeStore(HomeState(0));

  @override
  void reduce(action, value) {
    switch (action) {
      case HomeAction.add:
        state = HomeState(state.value + 1);
        break;
      case HomeAction.sub:
        state = HomeState(state.value - 1);
        break;
    }
  }
}
