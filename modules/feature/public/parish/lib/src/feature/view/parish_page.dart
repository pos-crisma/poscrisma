import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../provider/controller/action/parish_action.dart';
import '../provider/controller/store/parish_store.dart';
import 'mobile/parish_mobile.dart';
// import 'web/parish_web.dart';

class ParishPage extends StatefulWidget {
  final String type;
  final String parishId;
  final String senderId;
  final String invite;

  const ParishPage({
    super.key,
    required this.parishId,
    required this.type,
    required this.senderId,
    required this.invite,
  });

  @override
  State<ParishPage> createState() => _ParishPageState();
}

class _ParishPageState extends State<ParishPage> {
  final ParishReducer viewStore = ParishReducer();

  @override
  void initState() {
    super.initState();

    viewStore.send(ParishAction.onAppear(widget.parishId));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: ParishMobile(
        parishId: widget.parishId,
        senderId: widget.senderId,
        type: widget.type,
        invite: widget.invite,
        viewStore: viewStore,
      ),
      desktop: ParishMobile(
        parishId: widget.parishId,
        senderId: widget.senderId,
        type: widget.type,
        invite: widget.invite,
        viewStore: viewStore,
      ),
    );
  }
}
