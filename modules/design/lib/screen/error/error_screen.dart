import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/button/animated_button.dart';
import '../../theme/config/system_mode/system_mode.dart';

class ErroPage extends StatelessWidget {
  const ErroPage({
    super.key,
    this.enableColor,
    required this.title,
    required this.content,
    required this.backButton,
    required this.onPress,
  });

  final String title;
  final String content;

  final Color? enableColor;

  final Function() backButton;
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
                  leadingWidth: 66,
                  leading: CupertinoButton(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    onPressed: () => backButton,
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      color: SystemMode.isDark(context)
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
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
                          ),
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
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
              onPress: () => onPress,
              enableColor: enableColor ?? Colors.deepPurple.shade300,
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
