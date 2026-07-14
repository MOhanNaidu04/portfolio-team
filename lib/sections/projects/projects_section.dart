import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../widgets/cards/project_card.dart';
import '../../widgets/common/section_container.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Text(
            "PROJECTS",
            style: TextStyle(
              letterSpacing: 2,
              color: AppColors.secondary,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Featured Projects",
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 50),

          const ProjectCard(
            title: "Mohan AI Workspace",
            technologies:
                "React • Node.js • Express • PostgreSQL • AI • REST APIs",
            description:
                "A productivity-focused AI workspace that integrates intelligent chat capabilities, speech technologies, and modern UI/UX. Built using React for the frontend, Node.js & Express for the backend, PostgreSQL for database management, and AI integrations for intelligent interactions.",
          ),

          SizedBox(height: 30),

          const ProjectCard(
            title: "Hospital Management System",
            technologies:
                "Java • Spring Boot • MySQL • Swagger",
            description:
                "Developed a complete hospital management system with patient, doctor and appointment management. Implemented CRUD operations, centralized exception handling and REST APIs with Swagger documentation.",
          ),

          SizedBox(height: 30),

          const ProjectCard(
            title: "E-Commerce Web Application",
            technologies:
                "React.js • Axios • FakeStore API • CSS3",
            description:
                "Responsive React application with product filtering, searching, category management and real-time API integration using Axios.",
          ),

          SizedBox(height: 30),

          const ProjectCard(
            title: "Employee Management System",
            technologies:
                "Java • Spring Boot • MySQL",
            description:
                "Employee management application implementing CRUD operations, MVC architecture and database integration using Spring Boot.",
          ),

          SizedBox(height: 30),

          const ProjectCard(
            title: "Stress Detection using HRV",
            technologies:
                "Python • CNN • Machine Learning",
            description:
                "Machine learning project using CNN to classify stress levels from Heart Rate Variability data into multiple categories.",
          ),
        ],
      ),
    );
  }
}