import 'package:flutter/material.dart';

class AnimatedBlob extends StatefulWidget {

  final double size;
  final Color color;

  const AnimatedBlob({
    super.key,
    required this.size,
    required this.color,
  });

  @override
  State<AnimatedBlob> createState() => _AnimatedBlobState();
}

class _AnimatedBlobState extends State<AnimatedBlob>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(

      animation: controller,

      builder: (_, child) {

        return Transform.translate(

          offset: Offset(
            0,
            controller.value * 30,
          ),

          child: child,

        );
      },

      child: Container(

        width: widget.size,

        height: widget.size,

        decoration: BoxDecoration(

          color: widget.color,

          shape: BoxShape.circle,

        ),

      ),

    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}