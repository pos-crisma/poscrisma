import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';

import '../../model/user_type.dart';
import '../action/user_mobile_action.dart';
import '../state/user_mobile_state.dart';

class UserMobileReducer extends Reducer<UserMobileAction, UserMobileState> {
  UserMobileReducer()
      : super(UserMobileState(
          pageViewer: PageViewer.nickname,
          textEditingController: TextEditingController(text: ''),
          onFocus: FocusNode(),
        ));

  @override
  Future<Effect> reduce(UserMobileAction action) async {
    return action.fold(
      (action) => _onAppear(
        parishId: action.parishId,
        spenderId: action.spenderId,
        type: action.type,
      ),
      (action) => _handlerTapped(),
      (action) => _backButton(),
    );
  }

  _onAppear({
    required String parishId,
    required String spenderId,
    required UserType type,
  }) {
    state.parishId = parishId;
    state.spenderId = spenderId;
    state.type = type;

    return Effect.emit();
  }

  _handlerTapped() {
    return switch (state.pageViewer) {
      PageViewer.nickname => () {
          state.nickname = state.textEditingController.text;
          state.textEditingController = TextEditingController(text: '');
          state.onFocus.unfocus();

          state.pageViewer = PageViewer.name;
          return Effect.emit();
        },
      PageViewer.name => () {
          state.name = state.textEditingController.text;
          state.textEditingController = TextEditingController(text: '');
          state.onFocus.unfocus();

          state.pageViewer = PageViewer.email;
          return Effect.emit();
        },
      PageViewer.email => () {
          state.email = state.textEditingController.text;
          state.textEditingController = TextEditingController(text: '');
          state.onFocus.unfocus();

          state.pageViewer = PageViewer.phone;
          return Effect.emit();
        },
      PageViewer.phone => () {
          state.phone = state.textEditingController.text;
          state.textEditingController = TextEditingController(text: '');
          state.onFocus.unfocus();

          state.pageViewer = PageViewer.medicalRecords;
          return Effect.emit();
        },
      PageViewer.medicalRecords => () {
          state.medicalRecords = state.textEditingController.text;

          return Effect.run(() async {
            print(state.nickname);
            print(state.email);
            print(state.name);
            print(state.phone);
            print(state.medicalRecords);
          });
        },
    }();
  }

  _backButton() {
    return switch (state.pageViewer) {
      PageViewer.nickname => () {
          state.onFocus.unfocus();
          return Effect.run(() async {
            Modular.to.pop();
          });
        },
      PageViewer.name => () {
          state.textEditingController =
              TextEditingController(text: state.nickname ?? "");
          state.onFocus.unfocus();

          state.pageViewer = PageViewer.nickname;
          return Effect.emit();
        },
      PageViewer.email => () {
          state.textEditingController =
              TextEditingController(text: state.name ?? "");
          state.onFocus.unfocus();

          state.pageViewer = PageViewer.name;
          return Effect.emit();
        },
      PageViewer.phone => () {
          state.textEditingController =
              TextEditingController(text: state.email ?? "");
          state.onFocus.unfocus();

          state.pageViewer = PageViewer.email;
          return Effect.emit();
        },
      PageViewer.medicalRecords => () {
          state.textEditingController =
              TextEditingController(text: state.phone ?? "");
          state.onFocus.unfocus();

          state.pageViewer = PageViewer.phone;
          return Effect.emit();
        },
    }();
  }
}
