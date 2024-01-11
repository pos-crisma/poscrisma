import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../provider/controller/action/user_mobile_action.dart';
import '../provider/controller/store/create_user_reducer.dart';
import '../provider/model/user_type.dart';
import 'mobile/create_user_mobile.dart';
// import 'web/user_web.dart';

class CreateUserPage extends StatefulWidget {
  final String type;
  final String parishId;
  final String senderId;
  final String invite;

  const CreateUserPage({
    super.key,
    required this.type,
    required this.parishId,
    required this.senderId,
    required this.invite,
  });

  @override
  State<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  final UserMobileReducer viewStore = UserMobileReducer();

  @override
  void initState() {
    super.initState();

    viewStore.send(
      UserMobileAction.onAppear(
        widget.parishId,
        widget.senderId,
        UserType.values.byName(widget.type),
        widget.invite,
        context,
      ),
    );
  }

  @override
  void dispose() {
    viewStore.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: UserMobile(
        viewStore: viewStore,
      ),
      desktop: UserMobile(
        viewStore: viewStore,
      ),
    );
  }
}
