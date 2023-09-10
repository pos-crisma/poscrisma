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
  Effect reduce(HomeAction action, content) {
    switch (action) {
      case HomeAction.add:
        value.number += 1;
        value.text = content;
        return Effect.none;
      case HomeAction.sub:
        value.number -= 1;
        value.text = content;
        return Effect.none;
    }
  }
}
