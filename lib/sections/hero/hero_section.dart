import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
      child: width > 900
          ? Row(
              children: [
                Expanded(child: _leftSide()),
                const SizedBox(width: 60),
                Expanded(child: _rightSide()),
              ],
            )
          : Column(
              children: [
                _leftSide(),
                const SizedBox(height: 40),
                _rightSide(),
              ],
            ),
    );
  }

  Widget _leftSide() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello, I'm",
          style: TextStyle(
            fontSize: 24,
            color: AppColors.secondary,
          ),
        ),

        const SizedBox(height: 20),

        const Text(
          "RAGHAVA",
          style: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            height: 1.0,
          ),
        ),

        const SizedBox(height: 25),

        const Text(
          "Flutter Developer\nFull Stack Developer\nAI Enthusiast",
          style: TextStyle(
            fontSize: 22,
            height: 1.8,
          ),
        ),

        const SizedBox(height: 40),

        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 25, vertical: 18),
                child: Text("Hire Me"),
              ),
            ),

            const SizedBox(width: 20),

            OutlinedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 25, vertical: 18),
                child: Text("Download Resume"),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _rightSide() {
    return Center(
      child: Container(
        width: 420,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.08),
            ),
          ],
        ),
        child: const Center(
          child: Icon(
            Icons.person,
            size: 180,
          ),
        ),
      ),
    );
  }
}