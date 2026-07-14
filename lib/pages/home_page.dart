import 'package:flutter/material.dart';

import '../widgets/common/navbar.dart';
import '../sections/hero/hero_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Navbar(),

            HeroSection(),

            SizedBox(height: 1000),

          ],
        ),
      ),
    );
  }
}