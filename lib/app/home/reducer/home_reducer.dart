import '../../../core/reducer.dart';

sealed class HomeAction {}

class Added extends HomeAction {
  final int value;
  final String random;

  Added({
    this.value = 1,
    this.random = "",
  });
}

class Subtracted extends HomeAction {
  final int value;
  final String random;

  Subtracted({
    this.value = 1,
    this.random = "",
  });
}

interface class HomeState {
  int number;
  String text;

  HomeState(this.number, this.text);
}

class HomeReducer extends Reducer<HomeAction, HomeState> {
  HomeReducer() : super(HomeState(0, ""));

  @override
  Effect reduce(HomeAction action) {
    return switch (action) {
      Added(value: var i, random: var content) => () {
          value.number += i;
          value.text = content;
          return Effect.none;
        },
      Subtracted(value: var i, random: var content) => () {
          value.number -= i;
          value.text = content;
          return Effect.none;
        },
    }();
  }
}
