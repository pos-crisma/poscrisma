import '../../../core/reducer.dart';

enum HomeAction { add, sub }

interface class HomeState {
  int number;

  HomeState(this.number);
}

class HomeReducer extends Reducer<HomeAction, HomeState> {
  HomeReducer() : super(HomeState(0));

  @override
  void reduce(HomeAction action, content) {
    switch (action) {
      case HomeAction.add:
        value = HomeState(value.number + 1);
        break;
      case HomeAction.sub:
        value = HomeState(value.number - 1);
        break;
    }
  }
}
