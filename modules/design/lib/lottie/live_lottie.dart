import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LiveAnimation extends StatefulWidget {
  const LiveAnimation({super.key});

  @override
  State<LiveAnimation> createState() => _LiveAnimationState();
}

class _LiveAnimationState extends State<LiveAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/animation/live.json',
            package: 'design',
            height: 16,
            width: 16,
            controller: _controller,
            onLoaded: (composition) {
              // Configure the AnimationController with the duration of the
              // Lottie file and start the animation.

              _controller
                ..duration = composition.duration
                ..forward()
                ..repeat();
            },
            repeat: true,
          ),
          Text(
            " AO VIVO",
            style: Theme.of(context)
                .textTheme
                .labelSmall! //
                .copyWith(
                  color: Colors.red.shade400,
                ),
          ),
        ],
      ),
    );
  }
}
