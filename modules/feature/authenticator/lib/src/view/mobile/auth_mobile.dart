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
      body: CustomScrollView(
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
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: Text('Auth'),
            ),
          ),
        ],
      ),
    );
  }
}
