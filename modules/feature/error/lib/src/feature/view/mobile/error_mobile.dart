import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorMobile extends StatelessWidget {
  const ErrorMobile({
    super.key,
    this.enableColor,
    required this.title,
    required this.content,
    required this.backButton,
    required this.onPress,
    required this.isShowButton,
    required this.titleButton,
  });

  final String title;
  final String content;

  final Color? enableColor;

  final Function() backButton;

  final bool isShowButton;
  final String titleButton;
  final Function() onPress;

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
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    onPressed: backButton(),
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
                                // fontWeight: FontWeight.bold,
                                color: SystemMode.isDark(context)
                                    ? Colors.white
                                    : Colors.black,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 200,
                    child: Image(
                      image:
                          SystemMode.isDark(context) ? noDataDark : noDataLight,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge! //
                          .copyWith(
                            fontWeight: FontWeight.bold,
                            color: SystemMode.isDark(context)
                                ? Colors.white
                                : Colors.black,
                          ),
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: Text(
                    content,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium! //
                        .copyWith(
                          color: SystemMode.isDark(context)
                              ? Colors.white
                              : Colors.black,
                        ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
              ],
            ),
          ),
          isShowButton
              ? AnimatedOpacity(
                  opacity: View.of(context).viewInsets.bottom > 0.0 ? 0 : 1,
                  duration: Durations.medium1,
                  child: const Divider(
                    thickness: 0.2,
                    height: 1,
                  ),
                )
              : const SizedBox(),
          isShowButton
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    top: 8,
                    bottom: MediaQuery.of(context).padding.bottom,
                  ),
                  child: AnimatedButton(
                    onPress: onPress(),
                    enableColor: enableColor ?? Colors.deepPurple.shade300,
                    disabledChild: const CircularProgressIndicator.adaptive(),
                    child: Text(
                      titleButton,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium! //
                          .copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
