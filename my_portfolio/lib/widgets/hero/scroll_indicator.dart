import 'package:flutter/material.dart';

class ScrollIndicator extends StatelessWidget {
  const ScrollIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.keyboard_double_arrow_down,
      size: 38,
      color: Colors.grey,
    );
  }
}