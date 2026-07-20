import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String technologies;
  final String description;

  const ProjectCard({
    super.key,
    required this.title,
    required this.technologies,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            technologies,
            style: const TextStyle(
              color: AppColors.secondary,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 25),
          Text(
            description,
            style: const TextStyle(
              fontSize: 17,
              height: 1.8,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("View Project"),
              ),
              const SizedBox(width: 20),
              OutlinedButton(
                onPressed: () {},
                child: const Text("GitHub"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}