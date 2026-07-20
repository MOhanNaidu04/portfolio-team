import 'package:flutter/material.dart';


class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 70,
      ),
      child: Column(
        children: [

          const Text(
            "MOHAN",
            style: TextStyle(
              color: Colors.white,
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Building modern web experiences using React, Java,\nSpring Boot and AI technologies.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
              height: 1.8,
            ),
          ),

          const SizedBox(height: 40),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            children: [

              _footerButton("GitHub"),

              _footerButton("LinkedIn"),

              _footerButton("Email"),

              _footerButton("Resume"),

            ],
          ),

          const SizedBox(height: 50),

          Divider(
            color: Colors.grey.shade800,
          ),

          const SizedBox(height: 25),

          const Text(
            "© 2026 Mohan Naidu • Designed & Developed using Flutter",
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _footerButton(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}