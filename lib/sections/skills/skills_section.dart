import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../widgets/common/section_container.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
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

          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30,
            childAspectRatio: 1.3,
            children: const [

              SkillCategory(
                title: "Frontend",
                skills: [
                  "React.js",
                  "Flutter",
                  "HTML5",
                  "CSS3",
                  "JavaScript",
                ],
              ),

              SkillCategory(
                title: "Backend",
                skills: [
                  "Java",
                  "Spring Boot",
                  "Node.js",
                  "Express.js",
                ],
              ),

              SkillCategory(
                title: "Database",
                skills: [
                  "PostgreSQL",
                  "MySQL",
                  "MongoDB",
                ],
              ),

              SkillCategory(
                title: "Tools",
                skills: [
                  "Git",
                  "GitHub",
                  "Swagger",
                  "VS Code",
                  "Postman",
                ],
              ),
            ],
          ),
        ],
      ),
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

      padding: const EdgeInsets.all(30),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 20,
          )
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: skills
                .map(
                  (skill) => Chip(
                    label: Text(skill),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}