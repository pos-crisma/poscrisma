import 'dart:async';
import 'dart:developer';

import 'package:core/core.dart';
import 'package:error/error.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

import '../../../manager/room_manager_detail/view/room_manager_detail.dart';
import '../action/detail_action.dart';
import '../state/detail_state.dart';

class DetailReducer extends Reducer<DetailAction, DetailState> {
  DetailReducer(Room room) : super(DetailState(room));

  @override
  Future<Effect> reduce(DetailAction action) async => //
      action.when(
        onAppear: _onAppear,
        buttonTapped: _buttonTapped,
        buttonUserTapped: _buttonUserTapped,
        failure: _failure,
        loading: _loading,
        service: _service,
        success: _success,
      );

  FutureOr<Effect> _onAppear(BuildContext context) {
    state.context = context;

    final user = profileStore.user;
    if (user != null) {
      state.user = user;
    }

    return Effect.runAndEmit(() async {
      send(const DetailAction.loading(true));
      send(const DetailAction.service());
    });
  }

  FutureOr<Effect> _buttonUserTapped(String userId) {
    return Effect.run(() async {
      log(userId, name: "UserId");
      // showDetail(
      //   state.context,
      //   Detail: Detail,
      //   onClose: (bool? value) {},
      // );
    });
  }

  FutureOr<Effect> _buttonTapped(Room room) {
    return Effect.run(() async {
      showModalBottomSheet(
        context: state.context,
        isScrollControlled: true,
        useSafeArea: true,
        enableDrag: kIsWeb ? false : true,
        isDismissible: kIsWeb ? false : true,
        barrierColor: Colors.transparent,
        builder: (context) {
          return RoomManagerDetail(room: room);
        },
      ).then((value) {
        send(const DetailAction.loading(true));
        send(const DetailAction.service());
      });
    });
  }

  FutureOr<Effect> _loading(bool isLoading) {
    state.isLoading = isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _service() => Effect.run(() async {
        await RoomAPI.getRoomById(state.room.roomId ?? "").fold(
          (success) => send(DetailAction.success(success)),
          (error) => send(DetailAction.failure(error)),
        );
      });

  FutureOr<Effect> _success(Room dto) {
    state.room = dto;

    return Effect.runAndEmit(() async {
      send(const DetailAction.loading(false));
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      send(const DetailAction.loading(false));
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
