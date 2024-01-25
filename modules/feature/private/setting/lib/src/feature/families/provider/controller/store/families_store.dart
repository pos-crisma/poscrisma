import 'dart:async';

import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:error/error.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../api/family_api.dart';
import '../../dto/families_response_dto.dart';
import '../action/families_action.dart';
import '../state/families_state.dart';

class FamiliesReducer extends Reducer<FamiliesAction, FamiliesState> {
  FamiliesReducer(BuildContext context)
      : super(FamiliesState(context: context));

  @override
  Future<Effect> reduce(FamiliesAction action) async => //
      action.when(
        onAppear: _onAppear,
        pullToRefresh: _pullToRefresh,
        loading: _loading,
        service: _service,
        success: _success,
        failure: _failure,
        showMore: _showMore,
      );

  FutureOr<Effect> _onAppear() {
    return Effect.run(() async {
      await send(const FamiliesAction.loading(true));
      await send(const FamiliesAction.service());
    });
  }

  FutureOr<Effect> _pullToRefresh() {
    return Effect.run(() async {
      await send(const FamiliesAction.loading(true));
      await send(const FamiliesAction.service());
    });
  }

  FutureOr<Effect> _loading(bool isLoading) {
    state.isLoading = isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _service() {
    return Effect.run(() async {
      await FamilyAPI.get().fold(
        (success) => send(FamiliesAction.success(success)),
        (error) => send(FamiliesAction.failure(error)),
      );
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      send(const FamiliesAction.loading(false));

      final message =
          errorInfo.message?.toString().replaceAll("[", "").replaceAll("]", "");
      final errorMessage = errorInfo.error?.message.toString();

      Navigator.of(state.context).push(
        MaterialPageRoute(
          builder: (context) {
            return ErrorPage(
              title: errorMessage,
              content: message == "" ? null : message,
              backButton: () => Navigator.of(state.context).pop(),
              onPress: null,
              isShowButton: false,
              enableColor: Colors.transparent,
            );
          },
        ),
      );
    });
  }

  FutureOr<Effect> _success(FamiliesResponseDTO data) {
    state.families = data.families;
    return Effect.send(const FamiliesAction.loading(false));
  }

  FutureOr<Effect> _showMore(Family family) {
    return Effect.run(() async {
      showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        context: state.context,
        barrierColor: Colors.transparent,
        builder: (context) => ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: Scaffold(
            backgroundColor: Colors.grey.shade800,
            appBar: AppBar(
              backgroundColor: Colors.grey.shade800,
              leading: Container(
                margin: const EdgeInsets.only(left: 8.0),
                child: const CustomBackButton(
                  backTitle: "",
                  backIcon: CupertinoIcons.clear_circled_solid,
                ),
              ),
              title: Text("Detalhe da familia"),
            ),
            body: const CustomScrollView(
              slivers: [],
            ),
          ),
        ),
      );
    });
  }
}
