import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthMobile extends StatelessWidget {
  AuthMobile({super.key});

  final ScrollController controller = ScrollController();

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
                  pinned: true,
                  elevation: 0,
                  leadingWidth: 100,
                  leading: CupertinoButton(
                    padding: const EdgeInsets.only(left: 8),
                    onPressed: () => Modular.to.pop(),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.arrow_left,
                          color: SystemMode.isDark(context)
                              ? Colors.white
                              : Colors.black,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Voltar',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge! //
                              .copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: const Image(
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
                        Text(
                          'Tendo sua conta, abaixo você pode fazer o login dentro do acampamento da paroquia', // TODO: move to i18n
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium! //
                              .copyWith(
                                  // fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: CustomTextFormField(
                    // focusNote: viewStore.value.onFocus,
                    // controller: viewStore.value.textEditingController,
                    boxDecorationColor: SystemMode.isDark(context)
                        ? Colors.black
                        : Colors.grey.shade200,
                    labelText: 'Preencha seu nickname', // TODO: Move to i18n
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: CustomTextFormField(
                    // focusNote: viewStore.value.onFocus,
                    // controller: viewStore.value.textEditingController,
                    boxDecorationColor: SystemMode.isDark(context)
                        ? Colors.black
                        : Colors.grey.shade200,
                    labelText: 'Preencha sua senha', // TODO: Move to i18n
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
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            child: AnimatedButton(
              isFocus: View.of(context).viewInsets.bottom > 0.0,
              // isDisabled: value.isLoading,
              onPress: () {},
              enableColor: Colors.deepPurple.shade300,
              disableColor: SystemMode.isDark(context)
                  ? Colors.deepPurple.shade500
                  : Colors.deepPurple.shade100,
              disabledChild: const CircularProgressIndicator.adaptive(),
              child: Text(
                'Proximo',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium! //
                    .copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
