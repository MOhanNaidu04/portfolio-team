import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 60),
      decoration: BoxDecoration(
        color: AppColors.background.withOpacity(0.95),
        border: const Border(
          bottom: BorderSide(
            color: AppColors.border,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          const Text(
            "Raghava",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(),

          _menuItem("Home"),
          _menuItem("About"),
          _menuItem("Experience"),
          _menuItem("Projects"),
          _menuItem("Contact"),

          const SizedBox(width: 30),

          ElevatedButton(
            onPressed: () {},
            child: const Text("Resume"),
          ),
        ],
      ),
    );
  }

  Widget _menuItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}