import 'package:flutter/material.dart';

import '../cards/glass_card.dart';

class HeroImage extends StatelessWidget {
  final String imagePath;

  const HeroImage({
    super.key,
    this.imagePath = 'assets/images/profile.png',
  });

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
