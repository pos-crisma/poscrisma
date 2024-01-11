import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invite/src/feature/provider/controller/store/invite_store.dart';

import '../provider/controller/action/invite_action.dart';
import 'mobile/invite_mobile.dart';
import 'web/invite_web.dart';

class InvitePage extends StatefulWidget {
  const InvitePage({
    super.key,
    this.inviteCode,
  });

  final String? inviteCode;

  @override
  State<InvitePage> createState() => _InvitePageState();
}

class _InvitePageState extends State<InvitePage> {
  final InviteReducer viewStore = InviteReducer();

  @override
  void initState() {
    super.initState();
    viewStore.state.textEditingController.text = widget.inviteCode ?? "";
  }

  @override
  Widget build(BuildContext context) {
    viewStore.send(InviteAction.onAppear(context));
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: InviteMobile(
        inviteCode: widget.inviteCode ?? "",
        viewStore: viewStore,
      ),
      desktop: InviteWeb(
        inviteCode: widget.inviteCode ?? "",
        viewStore: viewStore,
      ),
    );
  }
}
