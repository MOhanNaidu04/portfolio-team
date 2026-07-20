import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/navigation/scroll_keys.dart';
import '../../../core/url_launcher_service.dart';

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
            ? Colors.white.withValues(alpha: .75)
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

                "Mohan",

                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),

_menu("Home", ScrollKeys.heroKey),
              _menu(
   "About",
   ScrollKeys.aboutKey,
),
             _menu(
   "Experience",
   ScrollKeys.experienceKey,
),
              _menu(
   "Projects",
   ScrollKeys.projectsKey,
),
             _menu(
   "Skills",
   ScrollKeys.skillsKey,
),
             _menu(
   "Contact",
   ScrollKeys.contactKey,
),

              const SizedBox(width: 30),

              ElevatedButton(
  onPressed: () {
    UrlLauncherService.openUrl(
      "assets/assets/resume/mohan_resume.pdf",
    );
  },
  child: const Text("Resume"),


              ),
            ],
        ),
      ),
      ),
    );
  }

  Widget _menu(String title, [GlobalKey? targetKey]) {

    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 18),

      child: MouseRegion(

        cursor: SystemMouseCursors.click,

        child: GestureDetector(
          onTap: () {
            if (targetKey?.currentContext != null) {
              Scrollable.ensureVisible(
                targetKey!.currentContext!,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          },
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}