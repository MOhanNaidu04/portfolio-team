import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../widgets/cards/tech_chip.dart';

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
  "I build premium Flutter applications,\n"
  "Full Stack web applications,\n"
  "and AI-powered digital products.",
  style: TextStyle(
    fontSize: 20,
    height: 1.8,
  ),
),

        const SizedBox(height: 40),

        Row(
          children: [
            ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(
      horizontal: 35,
      vertical: 22,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
    elevation: 2,
  ),
  onPressed: () {},
  child: const Text(
    "Hire Me",
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  ),
),

            const SizedBox(width: 20),

            OutlinedButton(
  style: OutlinedButton.styleFrom(
    foregroundColor: Colors.black,
    side: const BorderSide(
      color: Colors.black,
      width: 1.5,
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 35,
      vertical: 22,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
  ),
  onPressed: () {},
  child: const Text(
    "Download Resume",
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  ),
),
          ],
        ),
      ],
    );
  }

  Widget _rightSide() {
  return Column(
    children: [

      Container(
        width: 420,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.08),
              blurRadius: 20,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            "assets/images/profile.png",
            fit: BoxFit.cover,
          ),
        ),
      ),

      const SizedBox(height: 30),

      Wrap(
        spacing: 15,
        runSpacing: 15,
        alignment: WrapAlignment.center,
        children: const [

          TechChip(text: "Flutter"),

          TechChip(text: "React"),

          TechChip(text: "AI"),

          TechChip(text: "Node.js"),

          TechChip(text: "PostgreSQL"),

        ],
      ),
    ],
  );
}}