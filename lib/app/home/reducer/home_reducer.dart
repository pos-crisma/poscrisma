import '../../../core/reducer.dart';

enum HomeAction { add, sub }

interface class HomeState {
  int number;
  String text;

  HomeState(this.number, this.text);
}

class HomeReducer extends Reducer<HomeAction, HomeState> {
  HomeReducer() : super(HomeState(0, ""));

  @override
  void reduce(HomeAction action, content) {
    switch (action) {
      case HomeAction.add:
        value = HomeState(value.number + 1, content);
        break;
      case HomeAction.sub:
        value = HomeState(value.number - 1, content);
        break;
    }
  }
}
