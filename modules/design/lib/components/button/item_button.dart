import 'package:flutter/material.dart';

import '../../color/color.dart';

class ItemButton extends StatelessWidget {
  final VoidCallback onPress;
  final Widget child;

  const ItemButton({
    super.key,
    required this.onPress,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.transparent,
      highlightColor: ColorMode.setColor(
        context: context,
        light: Colors.grey.shade100,
        dark: Colors.grey.shade900,
      ),
      padding: EdgeInsets.zero,
      onPressed: onPress,
      child: child,
    );
  }
}
