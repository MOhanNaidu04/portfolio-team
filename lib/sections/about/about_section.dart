import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../widgets/cards/info_card.dart';
import '../../widgets/common/section_container.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SectionContainer(
      child: width > 900
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(
                  child: _leftSide(),
                ),

                const SizedBox(width: 70),

                Expanded(
                  child: _rightSide(),
                ),

              ],
            )
          : Column(
              children: [

                _leftSide(),

                const SizedBox(height: 50),

                _rightSide(),

              ],
            ),
    );
  }

  Widget _leftSide() {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        const Text(
          "ABOUT ME",
          style: TextStyle(
            color: AppColors.secondary,
            letterSpacing: 2,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 20),

        const Text(
          "Building scalable software with modern technologies.",
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
        ),

        const SizedBox(height: 30),

        const Text(
          "I'm Raghava, a Software Developer with hands-on experience in Java, Spring Boot, React.js, SQL, REST APIs and Full Stack Development. I enjoy building scalable, responsive and user-friendly applications while continuously learning modern technologies.",
          style: TextStyle(
            fontSize: 18,
            height: 1.8,
            color: AppColors.secondary,
          ),
        ),

      ],
    );
  }

  Widget _rightSide() {

    return GridView.count(

      shrinkWrap: true,

      physics: const NeverScrollableScrollPhysics(),

      crossAxisCount: 2,

      crossAxisSpacing: 20,

      mainAxisSpacing: 20,

      childAspectRatio: 1.3,

      children: const [

        InfoCard(
          title: "04+",
          subtitle: "Projects",
        ),

        InfoCard(
          title: "Java",
          subtitle: "Spring Boot",
        ),

        InfoCard(
          title: "React",
          subtitle: "Frontend",
        ),

        InfoCard(
          title: "Hyderabad",
          subtitle: "India",
        ),

      ],
    );
  }
}