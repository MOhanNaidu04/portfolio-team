import 'package:flutter/material.dart';

import 'animated_blob.dart';

class HeroBackground extends StatelessWidget {

  const HeroBackground({super.key});

  @override
  Widget build(BuildContext context) {

    return Stack(

      children: [

        Positioned(
          top: 30,
          right: 80,
          child: AnimatedBlob(
            size: 140,
            color: Colors.blue.withOpacity(.08),
          ),
        ),

        Positioned(
          left: 60,
          bottom: 120,
          child: AnimatedBlob(
            size: 180,
            color: Colors.purple.withOpacity(.06),
          ),
        ),

        Positioned(
          right: 250,
          bottom: 50,
          child: AnimatedBlob(
            size: 90,
            color: Colors.orange.withOpacity(.05),
          ),
        ),

      ],
    );
  }
}