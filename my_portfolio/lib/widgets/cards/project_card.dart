import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/url_launcher_service.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String technologies;
  final String description;
  final String? githubUrl;

  const ProjectCard({
    super.key,
    required this.title,
    required this.technologies,
    required this.description,
    this.githubUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      padding: const EdgeInsets.all(35),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .05),
            blurRadius: 20,
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
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            technologies,
            style: const TextStyle(
              color: AppColors.secondary,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(
              fontSize: 15,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 28),
          Align(
            alignment: Alignment.centerLeft,
            child: OutlinedButton.icon(
              onPressed: () async {
                await UrlLauncherService.openUrl(
                  githubUrl ?? 'https://github.com/MOhanNaidu04',
                );
              },
              icon: const Icon(Icons.code),
              label: const Text("View on GitHub"),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
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