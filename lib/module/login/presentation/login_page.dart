import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:poscrisma/index.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = LoginController();

  @override
  void initState() {
    super.initState();
    _controller.init(context);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Background(
            handler: showModal,
          ),
          Foreground(
            action: goToGoogleAuth,
          ),
        ],
      ),
    );
  }

  void showModal(CampData data) {
    showBarModalBottomSheet(
      context: context,
      expand: true,
      builder: (context) => AcampsPage(campData: data),
    );
  }

  void goToGoogleAuth() {
    _controller.handleGoogleSignIn(context);
  }
}
