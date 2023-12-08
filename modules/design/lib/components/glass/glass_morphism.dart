import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../design.dart';

class GlassMorphism extends StatelessWidget {
  final Widget child;
  final double start;
  final double end;

  final List<Color> colors;

  final double borderWidth;

  final Alignment borderAlignStart;
  final Alignment borderAlignEnd;
  final Alignment gradientAlignStart;
  final Alignment gradientAlignEnd;

  const GlassMorphism({
    super.key,
    this.colors = const [Colors.blue, Colors.transparent],
    required this.child,
    required this.start,
    required this.end,
    this.borderAlignStart = Alignment.topLeft,
    this.borderAlignEnd = Alignment.bottomRight,
    this.gradientAlignStart = Alignment.topLeft,
    this.gradientAlignEnd = Alignment.bottomRight,
    this.borderWidth = 1.5,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                SystemMode.isDark(context)
                    ? Colors.black.withOpacity(start)
                    : Colors.white.withOpacity(start),
                SystemMode.isDark(context)
                    ? Colors.black.withOpacity(end)
                    : Colors.deepPurple.withOpacity(end),
              ],
              begin: gradientAlignStart,
              end: gradientAlignEnd,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: GradientBoxBorder(
              gradient: LinearGradient(
                begin: borderAlignStart,
                end: borderAlignEnd,
                colors: colors,
              ),
              width: borderWidth,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
