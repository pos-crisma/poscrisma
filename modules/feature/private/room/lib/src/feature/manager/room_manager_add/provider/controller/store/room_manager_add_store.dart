import 'dart:async';

import 'package:core/core.dart';
import 'package:error/error.dart';
import 'package:flutter/material.dart';

import '../../api/room_manager_add_api.dart';
import '../../dto/create_room_dto.dart';
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
    return Effect.run(() async {
      send(const RoomManagarAddAction.service());
    });
  }

  FutureOr<Effect> _service() {
    return Effect.run(() async {
      await RoomManagerAddApi.send(CreateRoomDTO(
        blockName: state.blockController.text,
        roomName: state.nameController.text,
        bathrooms: int.parse(state.bathroomController.text),
        singleBed: int.parse(state.singleBedController.text),
        doubleBed: int.parse(state.doubleBedController.text),
        supportBed: int.parse(state.supportedBedController.text),
        couchBed: int.parse(state.couchBedController.text),
        minibar: state.hasMinibar,
        airConditioning: state.hasAirConditioning,
        observations: state.observationController.text,
        images: state.urlImage,
      )).fold(
        (success) => send(RoomManagarAddAction.success(success)),
        (error) => send(RoomManagarAddAction.failure(error)),
      );
    });
  }

  FutureOr<Effect> _loading() {
    state.isLoading = !state.isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _success(DefaultResponseDTO dto) {
    return Effect.run(() async {
      state.context.pop(true);
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        context: state.context,
        builder: (context) {
          return ErrorPage(
            title: errorInfo.response.toString(),
            content: errorInfo.error?.message.toString() ?? "",
            backButton: () => Navigator.of(state.context).pop(),
            onPress: null,
            isShowButton: false,
            enableColor: Colors.transparent,
          );
        },
      );
    });
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
