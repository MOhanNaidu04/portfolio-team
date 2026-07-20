import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/navigation/scroll_keys.dart';
import '../../../widgets/common/section_container.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollKeys.skillsKey,
      child: SectionContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "TECH STACK",
              style: TextStyle(
                letterSpacing: 2,
                color: AppColors.secondary,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Technologies I Work With",
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 50),

            LayoutBuilder(
              builder: (context, constraints) {
                final bool isDesktop = constraints.maxWidth > 900;

                return Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  children: [
                    _skillCardWidth(
                      constraints,
                      isDesktop,
                      const SkillCategory(
                        title: "Frontend",
                        skills: [
                          "React.js",
                          "Flutter",
                          "HTML5",
                          "CSS3",
                          "JavaScript",
                        ],
                      ),
                    ),

                    _skillCardWidth(
                      constraints,
                      isDesktop,
                      const SkillCategory(
                        title: "Backend",
                        skills: [
                          "Java",
                          "Spring Boot",
                          "Node.js",
                          "Express.js",
                        ],
                      ),
                    ),

                    _skillCardWidth(
                      constraints,
                      isDesktop,
                      const SkillCategory(
                        title: "Database",
                        skills: [
                          "PostgreSQL",
                          "MySQL",
                          "MongoDB",
                        ],
                      ),
                    ),

                    _skillCardWidth(
                      constraints,
                      isDesktop,
                      const SkillCategory(
                        title: "Tools",
                        skills: [
                          "Git",
                          "GitHub",
                          "Swagger",
                          "VS Code",
                          "Postman",
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _skillCardWidth(
      BoxConstraints constraints,
      bool isDesktop,
      Widget child,
      ) {
    return SizedBox(
      width: isDesktop
          ? (constraints.maxWidth - 30) / 2
          : constraints.maxWidth,
      child: child,
    );
  }
}

class SkillCategory extends StatelessWidget {
  final String title;
  final List<String> skills;

  const SkillCategory({
    super.key,
    required this.title,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .05),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: skills.map((skill) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.blue.shade100,
                  ),
                ),
                child: Text(
                  skill,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}