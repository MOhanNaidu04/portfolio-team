import 'package:flutter/material.dart';

class TechChip extends StatelessWidget {

  final String text;

  const TechChip({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 12,
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}