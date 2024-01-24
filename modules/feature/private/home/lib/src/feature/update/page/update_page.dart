import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/store.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({
    super.key,
    required this.version,
    required this.action,
  });

  final Version version;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: CustomScrollView(
                    slivers: [
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 16),
                      ),

                      // * Title
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Nova ',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge! //
                                    .copyWith(
                                      color: ColorMode.setColor(
                                        context: context,
                                        light: Colors.black,
                                        dark: Colors.white,
                                      ),
                                    ),
                                children: [
                                  TextSpan(
                                    text: "Atualização",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium! //
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: ColorMode.setColor(
                                            context: context,
                                            light: Colors.deepPurple.shade900,
                                            dark: Colors.deepPurple.shade200,
                                          ),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Poderá ver as notas da atualização e clicando no botão sera redirecionado ao fluxo de atualização do aplicativo.',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium! //
                                  .copyWith(),
                            ),
                          ],
                        ),
                      ),

                      const SliverToBoxAdapter(
                        child: SizedBox(height: 8),
                      ),

                      SliverToBoxAdapter(
                        child: Text(
                          version.message,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: AnimatedButton(
                  isFocus: View.of(context).viewInsets.bottom > 0.0,
                  // isDisabled: false,
                  onPress: action,
                  enableColor: Colors.deepPurple.shade300,
                  disableColor: SystemMode.isDark(context)
                      ? Colors.deepPurple.shade500
                      : Colors.deepPurple.shade100,
                  disabledChild: const CupertinoActivityIndicator(),
                  child: Text(
                    'Atualizar o aplicativo',
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
        ),
      ),
    );
  }
}
