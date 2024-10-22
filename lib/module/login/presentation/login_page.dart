import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:poscrisma/index.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

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
        // fit: StackFit.expand,
        children: [
          Background(
            handler: showModal,
          ),
          Foreground(
            action: goToGoogleAuth,
          ),
          Watch.builder(
            builder: (context) {
              return Visibility(
                visible: _controller.isLoading.value,
                child: Positioned.fill(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 64),
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: 44,
                          width: 44,
                          child: CircularProgressIndicator(),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Estamos preparando seu ambiente da gestão do seu acampamento",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )
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
