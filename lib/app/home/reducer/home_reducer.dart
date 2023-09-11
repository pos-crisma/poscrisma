import 'package:poscrisma/core/core.dart';

import '../../../core/network/base_fetch.dart';
import 'action/home_action.dart';
import 'state/home_state.dart';

class HomeReducer extends Reducer<HomeAction, HomeState> {
  HomeReducer() : super(HomeState(1, ""));

  @override
  Future<Effect> reduce(HomeAction action) async {
    return action.fold(
      (action) => _sun(),
      (action) => _subtract(),
      (action) => _result(action),
      (action) => _divider(),
      (action) => _service(),
    );
  }

  _sun() {
    value.number += 1;

    return Effect.send(Multied());
  }

  _subtract() {
    value.number -= 1;

    return Effect.none();
  }

  _result(Multied state) {
    value.number *= 2;
    value.text = state.random;

    return Effect.none();
  }

  _divider() {
    return Effect.none();
  }

  _service() {
    return Effect.run(
      () async {
        final album = await fetchAlbum();
        send(Multied(random: "${album.title} + ${value.number}"));
      },
    );
  }
}
