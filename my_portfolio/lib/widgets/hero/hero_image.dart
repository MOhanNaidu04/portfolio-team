import 'package:flutter/material.dart';
import '../cards/glass_card.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      child: Container(
        width: 320,
        height: 320,
        color: Colors.grey.shade200,
        child: const Icon(
          Icons.person,
          size: 160,
          color: Colors.black26,
        ),
      ),
    );
  }
}