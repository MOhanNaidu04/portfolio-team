import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../widgets/common/section_container.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "EXPERIENCE",
            style: TextStyle(
              color: AppColors.secondary,
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Professional Experience",
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 60),

          Container(
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.05),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      "2026",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 40),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Text(
                        "React Developer & Full Stack Developer Intern",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Convey Labs • Hyderabad",
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.secondary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const SizedBox(height: 25),

                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: const [

                          Chip(label: Text("React.js")),

                          Chip(label: Text("Node.js")),

                          Chip(label: Text("Express.js")),

                          Chip(label: Text("PostgreSQL")),

                          Chip(label: Text("REST APIs")),

                          Chip(label: Text("Git")),

                          Chip(label: Text("AI")),

                        ],
                      ),

                      const SizedBox(height: 30),

                      const Text(
                        "Working as a Full Stack Development Intern in a fast-growing AI startup, contributing to the development of AI-powered web applications and intelligent voice agent platforms.",
                        style: TextStyle(
                          fontSize: 17,
                          height: 1.8,
                        ),
                      ),

                      const SizedBox(height: 25),

                      const Text(
                        "Responsibilities",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 15),

                      const BulletPoint(
                        text:
                            "Develop responsive user interfaces using React.js with reusable components.",
                      ),

                      const BulletPoint(
                        text:
                            "Build and integrate REST APIs with Node.js, Express.js and PostgreSQL.",
                      ),

                      const BulletPoint(
                        text:
                            "Work on AI-powered voice agent applications and productivity platforms.",
                      ),

                      const BulletPoint(
                        text:
                            "Collaborate with designers and backend developers using Git workflows.",
                      ),

                      const BulletPoint(
                        text:
                            "Optimize UI performance, responsiveness and overall user experience.",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Icon(
              Icons.check_circle,
              size: 18,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 17,
                height: 1.7,
              ),
            ),
          ),
        ],
      ),
    );
  }
}