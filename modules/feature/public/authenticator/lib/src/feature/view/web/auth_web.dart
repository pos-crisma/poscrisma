import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../provider/controller/action/auth_action.dart';
import '../../provider/controller/store/auth_reducer.dart';

class AuthWeb extends StatefulWidget {
  const AuthWeb({super.key});

  @override
  State<AuthWeb> createState() => _AuthWebState();
}

class _AuthWebState extends State<AuthWeb> {
  final AuthReducer viewStore = Modular.get();
  bool obscureText = true;

  @override
  void initState() {
    super.initState();

    viewStore.send(AuthAction.onAppear());
  }

  @override
  void dispose() {
    viewStore.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBar,
      body: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    color: Colors.deepPurple.shade700,
                    height: constraints.maxHeight,
                    child: const Image(
                      image: backgroundChurch,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 16),
            LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox(
                  width: 400,
                  height: constraints.maxHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Acampamento poscrisma ',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall! //
                              .copyWith(),
                          children: [
                            TextSpan(
                              text: '2023',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    color: Colors.purple.shade500,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      // *
                      CustomTextFormField(
                        focusNote: viewStore.value.nicknameFocus,
                        controller: viewStore.value.nicknameController,
                        boxDecorationColor: SystemMode.isDark(context)
                            ? Colors.black
                            : Colors.grey.shade200,
                        labelText: 'Preencha seu nickname',
                      ),

                      const SizedBox(height: 8),

                      CustomTextFormField(
                        isSecurity: true,
                        obscureText: obscureText,
                        obscureOnPress: () =>
                            setState(() => obscureText = !obscureText),
                        focusNote: viewStore.value.passwordFocus,
                        controller: viewStore.value.passwordController,
                        boxDecorationColor: SystemMode.isDark(context)
                            ? Colors.black
                            : Colors.grey.shade200,
                        labelText: 'Preencha sua senha', // TODO: Move to i18n
                      ),

                      const SizedBox(height: 8),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade700,
                                  dark: Colors.grey.shade300,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              "ou",
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Container(
                                height: 1,
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.grey.shade700,
                                  dark: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 8),

                      RichText(
                        text: TextSpan(
                          text: 'Voce possui um convite? ',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall! //
                              .copyWith(),
                          children: [
                            TextSpan(
                              text: 'acessar area de convite',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Modular.to.navigate('/invite/'),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Colors.purple.shade500,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 36),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                          top: 8,
                          bottom: MediaQuery.of(context).padding.bottom == 0
                              ? View.of(context).viewInsets.bottom > 0.0
                                  ? 0
                                  : 8
                              : MediaQuery.of(context).padding.bottom,
                        ),
                        child: ValueListenableBuilder(
                          valueListenable: viewStore,
                          builder: (context, value, _) => AnimatedButton(
                            isFocus: View.of(context).viewInsets.bottom > 0.0,
                            isDisabled: value.isLoading,
                            onPress: () =>
                                viewStore.send(AuthAction.handlerTapped()),
                            enableColor: Colors.deepPurple.shade300,
                            disableColor: SystemMode.isDark(context)
                                ? Colors.deepPurple.shade500
                                : Colors.deepPurple.shade100,
                            disabledChild: const CupertinoActivityIndicator(),
                            child: Text(
                              'Entrar',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge! //
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
