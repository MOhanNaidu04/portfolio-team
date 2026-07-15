import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../widgets/cards/tech_chip.dart';
import '../../widgets/common/section_container.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../animations/fade_slide_animation.dart';
import '../../widgets/buttons/primary_button.dart';
import '../../widgets/buttons/secondary_button.dart';
import '../../widgets/hero/hero_image.dart';
import '../../widgets/hero/scroll_indicator.dart';
import '../../core/navigation/scroll_keys.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
  key: ScrollKeys.heroKey,
  child: SectionContainer(
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
  ),
    );
  }

 Widget _leftSide() {
  return FadeSlideAnimation(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          "Hello 👋",
          style: TextStyle(
            fontSize: 22,
            color: AppColors.secondary,
          ),
        ),

        const SizedBox(height: 20),

        const Text(
          "I'm Raghava",
          style: TextStyle(
            fontSize: 76,
            fontWeight: FontWeight.bold,
            height: .95,
          ),
        ),

        const SizedBox(height: 25),

        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                "Software Developer",
                speed: const Duration(milliseconds: 70),
              ),
              TypewriterAnimatedText(
                "Full Stack Developer",
                speed: const Duration(milliseconds: 70),
              ),
              TypewriterAnimatedText(
                "Java Developer",
                speed: const Duration(milliseconds: 70),
              ),
              TypewriterAnimatedText(
                "React Developer",
                speed: const Duration(milliseconds: 70),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        const Text(
          "Passionate Software Developer specializing in Full Stack Development, Java, Spring Boot, React.js and REST APIs. I enjoy building scalable, responsive, and user-focused applications that solve real-world problems.Building premium Flutter, AI and Full Stack applications with modern user experiences.",
          style: TextStyle(
            fontSize: 18,
            color: AppColors.secondary,
            height: 1.7,
          ),
        ),

        const SizedBox(height: 40),

        Row(
  children: [

    PrimaryButton(
      text: "Hire Me",
      onPressed: () {},
    ),

    const SizedBox(width: 20),

    SecondaryButton(
      text: "Download Resume",
      onPressed: () {},
    ),

  ],
),

        const SizedBox(height: 80),

const ScrollIndicator(),

      ],
      
    ),
  );

}

  Widget _rightSide() {
  return FadeSlideAnimation(
    delay: 300,
    child: Column(
      children: [

        const HeroImage(),

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
    ),
  );
}}