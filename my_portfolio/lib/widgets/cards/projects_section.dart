import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/url_launcher_service.dart';

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
          
          Align(
  alignment: Alignment.centerLeft,
  child: OutlinedButton.icon(
    onPressed: () async {
  await UrlLauncherService.openUrl(
    "https://github.com/MOhanNaidu04/Mohan-AI-Workspace",
  );
},
    icon: const Icon(Icons.code),
    label: const Text("View on GitHub"),
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
),
        ],
      ),
    );
  }
}