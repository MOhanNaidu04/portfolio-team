import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class Navbar extends StatelessWidget {

  final bool isScrolled;

  const Navbar({
    super.key,
    required this.isScrolled,
  });

  @override
  Widget build(BuildContext context) {

    return AnimatedContainer(

      duration: const Duration(milliseconds: 300),

      height: 80,

      padding: const EdgeInsets.symmetric(horizontal: 60),

      decoration: BoxDecoration(

        color: isScrolled
            ? Colors.white.withOpacity(.75)
            : Colors.transparent,

        border: Border(
          bottom: BorderSide(
            color: isScrolled
                ? Colors.grey.shade300
                : Colors.transparent,
          ),
        ),

      ),

      child: ClipRRect(

        child: BackdropFilter(

          filter: ImageFilter.blur(
            sigmaX: 12,
            sigmaY: 12,
          ),

          child: Row(

            children: [

              const Text(

                "Raghava",

                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),

              _menu("Home"),
              _menu("About"),
              _menu("Experience"),
              _menu("Projects"),
              _menu("Skills"),
              _menu("Contact"),

              const SizedBox(width: 30),

              ElevatedButton(

                style: ElevatedButton.styleFrom(

                  backgroundColor: AppColors.primary,

                  foregroundColor: Colors.white,

                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 18,
                  ),

                ),

                onPressed: () {},

                child: const Text("Resume"),

              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _menu(String title) {

    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 18),

      child: MouseRegion(

        cursor: SystemMouseCursors.click,

        child: Text(

          title,

          style: const TextStyle(

            fontSize: 17,

            fontWeight: FontWeight.w500,

          ),
        ),
      ),
    );
  }
}