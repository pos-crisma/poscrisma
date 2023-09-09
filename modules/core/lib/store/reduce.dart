import 'dart:async';

abstract class Reduce<S, A> {
  late S _state;
  late StreamController<S> _streamController;

  Reduce(S initialState) {
    _create(initialState);
  }

  Reduce.autoDispose(S initialState) {
    _create(initialState);
    _streamController.onCancel = () => close();
  }

  _create(S initialState) {
    _streamController = StreamController<S>.broadcast();
    _addToSink(initialState);
    init();
  }

  _addToSink(S initialState) {
    _state = initialState;
    _streamController.sink.add(_state);
  }

  S get state => _state;
  set state(S newState) => _addToSink(newState);

  Stream<S> get stream => _streamController.stream;

  void send(A action, dynamic value) => reduce(action, value);

  void error(Object error) {
    _streamController.addError(error);
    throw error;
  }

  void close() {
    _streamController.close();
    dispose();
  }

  void init() {}
  void dispose() {}

  void reduce(A action, dynamic value);
}
