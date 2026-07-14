import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final Widget child;

  const SectionContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 1400,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 80,
      ),
      child: child,
    );
  }
}