import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../provider/controller/action/auth_action.dart';
import '../../provider/controller/store/auth_reducer.dart';

class AuthMobile extends StatefulWidget {
  const AuthMobile({
    super.key,
    required this.viewStore,
  });

  final AuthReducer viewStore;

  @override
  State<AuthMobile> createState() => _AuthMobileState();
}

class _AuthMobileState extends State<AuthMobile> {
  bool obscureText = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    widget.viewStore.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  surfaceTintColor: Colors.transparent,
                  elevation: 0,
                  stretch: true,
                  expandedHeight: Responsive.isSmallScreen(context) ? 150 : 200,
                  flexibleSpace: const FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    background: Image(
                      image: backgroundChurch,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Text(
                          'Vamos fazer o login', // TODO: move to i18n
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'Tendo sua conta, abaixo você pode fazer o login dentro do acampamento da paroquia', // TODO: move to i18n
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium! //
                                .copyWith(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: CustomTextFormField(
                    focusNote: widget.viewStore.value.nicknameFocus,
                    controller: widget.viewStore.value.nicknameController,
                    boxDecorationColor: SystemMode.isDark(context)
                        ? Colors.black
                        : Colors.grey.shade200,
                    labelText:
                        'Preencha seu nome de usuario', // TODO: Move to i18n
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: CustomTextFormField(
                    isSecurity: true,
                    obscureText: obscureText,
                    obscureOnPress: () =>
                        setState(() => obscureText = !obscureText),
                    focusNote: widget.viewStore.value.passwordFocus,
                    controller: widget.viewStore.value.passwordController,
                    boxDecorationColor: SystemMode.isDark(context)
                        ? Colors.black
                        : Colors.grey.shade200,
                    labelText: 'Preencha sua senha', // TODO: Move to i18n
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
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
                                  light: Colors.grey.shade200,
                                  dark: Colors.grey.shade800,
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
                                  light: Colors.grey.shade200,
                                  dark: Colors.grey.shade800,
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
                                ..onTap = () => context.pushNamed('invite'),
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
                      RichText(
                        text: TextSpan(
                          text: 'Esqueceu a senha? ',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall! //
                              .copyWith(),
                          children: [
                            TextSpan(
                              text: 'Recuperar a senha',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => context.pushNamed('forgot_password'),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          AnimatedOpacity(
            opacity: View.of(context).viewInsets.bottom > 0.0 ? 0 : 1,
            duration: Durations.medium1,
            child: const Divider(
              thickness: 0.2,
              height: 1,
            ),
          ),
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
              valueListenable: widget.viewStore,
              builder: (context, value, _) => AnimatedButton(
                isFocus: View.of(context).viewInsets.bottom > 0.0,
                isDisabled: value.isLoading,
                onPress: () =>
                    widget.viewStore.send(const AuthAction.handlerTapped()),
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
  }
}
