import 'dart:async';

import 'package:core/core.dart';
import 'package:error/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store/store.dart';

import '../../view/room_manager_editor.dart';
import '../action/room_manager_update_action.dart';
import '../enum/room_manager_update_input_type.dart';
import '../state/room_manager_update_state.dart';

class RoomManagarUpdateReducer
    extends Reducer<RoomManagarUpdateAction, RoomManagarUpdateState> {
  RoomManagarUpdateReducer(BuildContext context, Room room)
      : super(RoomManagarUpdateState(room: room, context: context));

  @override
  Future<Effect> reduce(RoomManagarUpdateAction action) async => //
      action.when(
        onAppear: _onAppear,
        buttonTapped: _buttonTapped,
        service: _service,
        loading: _loading,
        success: _success,
        failure: _failure,
        addImages: _addImage,
        removeImages: _removeImage,
        copyImage: _copyImage,
      );

  FutureOr<Effect> _onAppear() {
    return Effect.runAndEmit(() async {});
  }

  FutureOr<Effect> _buttonTapped(RoomManagerUpdateInputType inputType) {
    switch (inputType) {
      case RoomManagerUpdateInputType.name:
        state.nameController =
            TextEditingController(text: state.room.roomName ?? "");
        break;
      case RoomManagerUpdateInputType.air:
        if (state.room.airConditioning != null) {
          state.air = state.room.airConditioning!;
        }
        break;
      case RoomManagerUpdateInputType.availability:
        if (state.room.availability != null) {
          state.availability = state.room.availability!;
        }
        break;
      case RoomManagerUpdateInputType.block:
        state.blockController =
            TextEditingController(text: state.room.blockName ?? "");
        break;
      case RoomManagerUpdateInputType.couchBed:
        state.couchBedController =
            TextEditingController(text: state.room.couchBed.toString());
        break;
      case RoomManagerUpdateInputType.coupleBed:
        state.doubleBedController =
            TextEditingController(text: state.room.doubleBed.toString());
        break;
      case RoomManagerUpdateInputType.image:
        if (state.room.images != null) {
          state.urlImage = state.room.images!;
        }
        break;
      case RoomManagerUpdateInputType.minibar:
        if (state.room.minibar != null) {
          state.minibar = state.room.minibar!;
        }
        break;
      case RoomManagerUpdateInputType.observation:
        state.observationController =
            TextEditingController(text: state.room.observations ?? "");
        break;
      case RoomManagerUpdateInputType.singleBed:
        state.singleBedController =
            TextEditingController(text: state.room.singleBed.toString());
        break;
      case RoomManagerUpdateInputType.supportedBed:
        state.supportedBedController =
            TextEditingController(text: state.room.supportBed.toString());
        break;
    }

    return Effect.runAndEmit(() async {
      showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        context: state.context,
        barrierColor: Colors.transparent,
        builder: (context) {
          return RoomManagerEditor(
            inputType: inputType,
            viewStore: this,
          );
        },
      ).then((value) {
        var room = state.room;

        room.copyWith();

        switch (inputType) {
          case RoomManagerUpdateInputType.name:
            room = room.copyWith(roomName: state.nameController.text);

            break;
          case RoomManagerUpdateInputType.air:
            room = room.copyWith(airConditioning: state.air);

            break;
          case RoomManagerUpdateInputType.availability:
            room = room.copyWith(availability: state.availability);

            break;
          case RoomManagerUpdateInputType.block:
            room = room.copyWith(blockName: state.blockController.text);

            break;
          case RoomManagerUpdateInputType.couchBed:
            room = room.copyWith(
                couchBed: int.parse(state.couchBedController.text));

            break;
          case RoomManagerUpdateInputType.coupleBed:
            room = room.copyWith(
                doubleBed: int.parse(state.doubleBedController.text));

            break;
          case RoomManagerUpdateInputType.image:
            room = room.copyWith(images: state.urlImage);

            break;
          case RoomManagerUpdateInputType.minibar:
            room = room.copyWith(minibar: state.minibar);

            break;
          case RoomManagerUpdateInputType.observation:
            room =
                room.copyWith(observations: state.observationController.text);

            break;
          case RoomManagerUpdateInputType.singleBed:
            room = room.copyWith(
                singleBed: int.parse(state.singleBedController.text));

            break;
          case RoomManagerUpdateInputType.supportedBed:
            room = room.copyWith(
                supportBed: int.parse(state.supportedBedController.text));

            break;
        }

        send(const RoomManagarUpdateAction.loading(true));
        send(RoomManagarUpdateAction.service(room));
      });
    });
  }

  FutureOr<Effect> _service(Room room) {
    state.room = room;
    return Effect.runAndEmit(() async {
      await RoomAPI.updateRoom(room).fold(
        (_) => send(RoomManagarUpdateAction.success(room)),
        (error) => send(RoomManagarUpdateAction.failure(error)),
      );
    });
  }

  FutureOr<Effect> _loading(bool isLoading) {
    state.isLoading = isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _success(Room room) {
    state.room = room;

    return Effect.runAndEmit(() async {
      send(const RoomManagarUpdateAction.loading(false));
    });
  }

  FutureOr<Effect> _addImage(String image) {
    state.urlImage.add(image);

    return Effect.emit();
  }

  FutureOr<Effect> _removeImage(String image) {
    state.urlImage.removeWhere((element) => element.contains(image));

    return Effect.emit();
  }

  FutureOr<Effect> _copyImage(String image) {
    return Effect.run(() async {
      Clipboard.setData(
        ClipboardData(text: image),
      );

      ScaffoldMessenger.of(state.context).showSnackBar(
        const SnackBar(
          content: Text('Copied to clipboard'),
        ),
      );
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      send(const RoomManagarUpdateAction.loading(false));
      showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        context: state.context,
        builder: (context) {
          return ErrorPage(
            title: errorInfo.response?.toString(),
            content: errorInfo.error?.message.toString(),
            backButton: () => Navigator.of(state.context).pop(),
            onPress: null,
            isShowButton: false,
            enableColor: Colors.transparent,
          );
        },
      );
    });
  }
}
