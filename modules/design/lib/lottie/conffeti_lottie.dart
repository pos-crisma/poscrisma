import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ConffetiAnimation extends StatefulWidget {
  const ConffetiAnimation({super.key});

  @override
  State<ConffetiAnimation> createState() => _ConffetiAnimationState();
}

class _ConffetiAnimationState extends State<ConffetiAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  bool isCompleted = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);

    _controller.addListener(() {
      setState(() => isCompleted = _controller.isCompleted);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Durations.medium1,
      child: AnimatedCrossFade(
        duration: Durations.medium1,
        crossFadeState: isCompleted //
            ? CrossFadeState.showSecond
            : CrossFadeState.showFirst,
        firstChild: Lottie.asset(
          'assets/animation/conffeti.json',
          package: 'design',
          height: 32,
          width: 32,
          controller: _controller,
          onLoaded: (composition) {
            // Configure the AnimationController with the duration of the
            // Lottie file and start the animation.

            _controller
              ..duration = composition.duration
              ..forward();
          },
        ),
        secondChild: const SizedBox(),
      ),
    );
  }
}
