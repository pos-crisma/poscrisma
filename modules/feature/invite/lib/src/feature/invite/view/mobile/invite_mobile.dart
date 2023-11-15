import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InviteMobile extends StatelessWidget {
  const InviteMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            surfaceTintColor: Colors.transparent,
            pinned: true,
            elevation: 0,
            leadingWidth: 66,
            leading: CupertinoButton(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              onPressed: () => Modular.to.pop(),
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
                    'Voce possui um convite?', // TODO: move to i18n
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge! //
                        .copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Tendo o convite voce poderar acessar ao acampamento do poscrisma', // TODO: move to i18n
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
              autoFocus: true,
              boxDecorationColor: SystemMode.isDark(context)
                  ? Colors.black
                  : Colors.grey.shade200,
              labelText: 'Link do convite', // TODO: Move to i18n
            ),
          ),
          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Os convites devem ser parecidos', // TODO: move to i18n
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'hash589340',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium! //
                        .copyWith(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey.shade50,
                        ),
                  ),
                  Text(
                    'https://poscrisma/hash589340',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium! //
                        .copyWith(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey.shade50,
                        ),
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Divider(
                thickness: 0.2,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CupertinoButton(
                color: Colors.deepPurple.shade300,
                child: Text(
                  'Verifica convite', // TODO: move to i18n
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium! //
                      .copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                ),
                onPressed: () => Modular.to.pushNamed('/parish/'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
