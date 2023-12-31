import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({
    super.key,
    bool isFocus = false,
    bool isDisabled = false,
    double pressOpacity = 0.4,
    AlignmentGeometry alignment = Alignment.center,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(horizontal: 8),
    EdgeInsetsGeometry innerPadding = const EdgeInsets.symmetric(
      vertical: 14.0,
      horizontal: 64.0,
    ),
    required this.onPress,
    required this.child,
    required this.disabledChild,
    required this.enableColor,
    this.disableColor,
  })  : _isDisabled = isDisabled,
        _isFocus = isFocus,
        _pressOpacity = pressOpacity,
        _alignment = alignment,
        _padding = padding,
        _innerPadding = innerPadding;

  final bool _isFocus;
  final bool _isDisabled;
  final double _pressOpacity;
  final AlignmentGeometry _alignment;
  final EdgeInsetsGeometry _padding;
  final EdgeInsetsGeometry _innerPadding;

  final Function() onPress;

  final Color enableColor;
  final Color? disableColor;

  final Widget child;
  final Widget disabledChild;

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: Durations.short4,
      padding: _isFocus ? EdgeInsets.zero : _padding,
      child: CupertinoButton(
        padding: _innerPadding,
        pressedOpacity: _pressOpacity,
        color: enableColor,
        disabledColor: disableColor ?? CupertinoColors.quaternarySystemFill,
        borderRadius: _isFocus
            ? BorderRadius.zero
            : const BorderRadius.all(Radius.circular(8.0)),
        onPressed: _isDisabled ? null : onPress,
        alignment: _alignment,
        child: AnimatedCrossFade(
          crossFadeState: _isDisabled
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          firstChild: child,
          secondChild: disabledChild,
          duration: Durations.short2,
        ),
      ),
    );
  }
}
