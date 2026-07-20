import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class StaggerAnimation extends StatelessWidget {
  final Widget child;
  final int delay;

  const StaggerAnimation({
    super.key,
    required this.child,
    this.delay = 0,
  });

  @override
  Widget build(BuildContext context) {
    return child
        .animate(delay: Duration(milliseconds: delay))
        .fade(duration: 700.ms)
        .slideY(begin: .2, end: 0);
  }
}