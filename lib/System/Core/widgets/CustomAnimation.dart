import 'package:flutter/material.dart';
import 'package:flutter_application_1/System/Resources/Animation.dart';

class MyCustomAnimation extends StatefulWidget {
  final child;
  const MyCustomAnimation({super.key, this.child});

  @override
  State<MyCustomAnimation> createState() => _MyCustomAnimationState();
}

class _MyCustomAnimationState extends State<MyCustomAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1000,
      ),
    );

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeIn(
        animation: Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve:
                const Interval((1 / 7) * 0, 1.0, curve: Curves.fastOutSlowIn),
          ),
        ),
        controller: _animationController,
        child: widget.child);
  }
}
