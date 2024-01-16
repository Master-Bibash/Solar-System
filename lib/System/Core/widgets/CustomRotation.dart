import 'package:flutter/material.dart';

class CustomRotation extends StatefulWidget {
  final child;
  final int? time;
  const CustomRotation({super.key, this.child, this.time});

  @override
  State<CustomRotation> createState() => _CustomRotationState();
}

class _CustomRotationState extends State<CustomRotation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  // late Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 50000),
      vsync: this,
    );
    _controller.forward();
    _controller.repeat();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 0.5).animate(_controller),
      filterQuality: FilterQuality.high,
      child: widget.child,
    );
  }
}
