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
