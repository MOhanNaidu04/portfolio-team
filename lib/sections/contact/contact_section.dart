import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/navigation/scroll_keys.dart';
import '../../core/url_launcher_service.dart';
import '../../widgets/common/section_container.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
  key: ScrollKeys.contactKey,
  child: SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Text(
            "CONTACT",
            style: TextStyle(
              letterSpacing: 2,
              color: AppColors.secondary,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Let's Build Something Amazing Together",
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 50),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "I'm currently available for internships, full-time opportunities and freelance work. Feel free to connect with me.",
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.8,
                      ),
                    ),
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: () => UrlLauncherService.makePhoneCall(
                        "+919347504183",
                      ),
                      child: const ContactTile(
                        icon: Icons.phone,
                        title: "Phone",
                        value: "+91 93475 04183",
                      ),
                    ),
                    InkWell(
                      onTap: () => UrlLauncherService.sendEmail(
                        "raghava45@gmail.com",
                      ),
                      child: const ContactTile(
                        icon: Icons.email,
                        title: "Email",
                        value: "raghava45@gmail.com",
                      ),
                    ),
                    const ContactTile(
                      icon: Icons.location_on,
                      title: "Location",
                      value: "Hyderabad, Telangana",
                    ),
                    InkWell(
                      onTap: () => UrlLauncherService.openUrl(
                        "https://www.linkedin.com/in/raghava-velugapally-b60802394/",
                      ),
                      child: const ContactTile(
                        icon: Icons.work,
                        title: "LinkedIn",
                        value: "raghava-velugapally",
                      ),
                    ),
                    InkWell(
                      onTap: () => UrlLauncherService.openUrl(
                        "https://github.com/miyamurah1",
                      ),
                      child: const ContactTile(
                        icon: Icons.code,
                        title: "GitHub",
                        value: "miyamurah1",
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 60),

              Expanded(
                flex: 3,
                child: Container(
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
                    children: [

                      TextField(
                        decoration: InputDecoration(
                          labelText: "Name",
                          border: OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 20),

                      TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 20),

                      TextField(
                        maxLines: 6,
                        decoration: InputDecoration(
                          labelText: "Message",
                          border: OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 30),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text("Send Message"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
  ),
    );
  }
}

class ContactTile extends StatelessWidget {

  final IconData icon;
  final String title;
  final String value;

  const ContactTile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [

          Icon(icon),

          const SizedBox(width: 15),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(value),
            ],
          ),
        ],
      ),
    );
  }
}