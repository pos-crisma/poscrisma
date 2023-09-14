sealed class TaskAction {
  static TaskAction webservice() => _WebService();
  static TaskAction back() => _Back();
  static TaskAction receive({String text = ""}) => _Receive(text: text);

  T fold<T>(
    T Function(_WebService action) service,
    T Function(_Back action) back,
    T Function(_Receive action) receive,
  ) =>
      switch (this) {
        _WebService action => service(action),
        _Back action => back(action),
        _Receive action => receive(action),
      };
}

class _WebService extends TaskAction {}

class _Back extends TaskAction {}

class _Receive extends TaskAction {
  final String text;

  _Receive({this.text = ""});
}
