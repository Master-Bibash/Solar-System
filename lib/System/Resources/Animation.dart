import 'package:flutter/material.dart';

class FadeIn extends StatefulWidget {
  final AnimationController controller;
  final Animation animation;
  final Widget child;
  const FadeIn({
    Key? key,
    required this.controller,
    required this.animation,
    required this.child,
  }) : super(key: key);

  @override
  _FadeInState createState() => _FadeInState();
}

class _FadeInState extends State<FadeIn> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (context, child) {
        return FadeTransition(
          opacity: kAlwaysCompleteAnimation,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50.0 * (1.0 - widget.animation.value), 0.0),
            child: widget.child,
          ),
        );
      },
    );
  }
}
