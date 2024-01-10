import 'package:flutter/material.dart';

import '../../color/color.dart';
import 'animated_button.dart';

class ComplexButton extends StatelessWidget {
  const ComplexButton({
    super.key,
    this.onPress,
    required this.text,
    required this.iconData,
    required this.light,
    required this.dark,
    bool showIsNew = true,
    bool badge = false,
  })  : _showIsNew = showIsNew,
        _badge = badge;

  final Function()? onPress;
  final String text;
  final IconData iconData;

  final bool _showIsNew;
  final bool _badge;

  final Color light;
  final Color dark;

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      padding: EdgeInsets.zero,
      innerPadding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 16.0,
      ),
      onPress: onPress != null ? () => onPress!() : () {},
      disabledChild: Container(),
      enableColor: ColorMode.setColor(
        context: context,
        light: light,
        dark: dark,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Badge(
            isLabelVisible: _badge,
            child: Icon(
              iconData,
              color: ColorMode.setColor(
                context: context,
                light: Colors.grey.shade900,
                dark: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge! //
                .copyWith(
                  color: ColorMode.setColor(
                    context: context,
                    light: Colors.grey.shade900,
                    dark: Colors.white,
                  ),
                ),
          ),
          const Spacer(),
          _showIsNew
              ? Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade600,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Novo',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall! //
                        .copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
