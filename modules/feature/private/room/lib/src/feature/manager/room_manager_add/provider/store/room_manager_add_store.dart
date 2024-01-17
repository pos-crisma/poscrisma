import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../action/room_manager_add_action.dart';
import '../state/room_managar_add_state.dart';

class RoomManagarAddReducer
    extends Reducer<RoomManagarAddAction, RoomManagarAddState> {
  RoomManagarAddReducer() : super(RoomManagarAddState());

  @override
  Future<Effect> reduce(RoomManagarAddAction action) async => //
      action.when(
        onAppear: _onAppear,
        buttonTapped: _buttonTapped,
        service: _service,
        loading: _loading,
        success: _success,
        failure: _failure,
        changeCheckBox: _changeCheckBox,
        addImage: _addImage,
        removeImage: _removeImage,
      );

  FutureOr<Effect> _onAppear(BuildContext context) {
    state.context = context;

    return Effect.emit();
  }

  FutureOr<Effect> _buttonTapped() {
    return Effect.run(() async {});
  }

  FutureOr<Effect> _service() {
    return Effect.run(() async {});
  }

  FutureOr<Effect> _loading() {
    state.isLoading = !state.isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _success(RoomSettingResponseDTO dto) {
    return Effect.emit();
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.emit();
  }

  FutureOr<Effect> _addImage(String image) {
    state.urlImage.add(image);

    return Effect.emit();
  }

  FutureOr<Effect> _removeImage(String image) {
    state.urlImage.removeWhere(
      (element) => element == image,
    );

    

    return Effect.emit();
  }

  FutureOr<Effect> _changeCheckBox(
    RoomManagarAddType contentOnPage,
  ) {
    if (contentOnPage == RoomManagarAddType.airConditioning) {
      value.hasAirConditioning = !value.hasAirConditioning;
    }
    if (contentOnPage == RoomManagarAddType.minibar) {
      value.hasMinibar = !value.hasMinibar;
    }

    return Effect.emit();
  }
}
