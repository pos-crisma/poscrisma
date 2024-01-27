import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forgotmobile extends StatelessWidget {

  const Forgotmobile({
    super.key,
  });

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
                  leadingWidth: 66,
                  leading: CupertinoButton(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    onPressed: () => context.pop(),
                    child: Text(
                      'Fechar',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Text(
                          'Esqueceu a senha?', // TODO: move to i18n
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Insira as informações a seguir para alterar a senha:', // TODO: move to i18n
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
                    boxDecorationColor: SystemMode.isDark(context)
                        ? Colors.black
                        : Colors.grey.shade200,
                    labelText: 'NickName', // TODO: Move to i18n
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: CustomTextFormField(
                    boxDecorationColor: SystemMode.isDark(context)
                        ? Colors.black
                        : Colors.grey.shade200,
                    labelText: 'Email', // TODO: Move to i18n
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: CustomTextFormField(
                    boxDecorationColor: SystemMode.isDark(context)
                        ? Colors.black
                        : Colors.grey.shade200,
                    labelText: '27/11/2004', // TODO: Move to i18n
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
