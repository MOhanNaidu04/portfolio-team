import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTextStyles {

  static const heroTitle = TextStyle(
    fontSize: 72,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
    height: .95,
  );

  static const sectionTitle = TextStyle(
    fontSize: 52,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static const heading = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static const body = TextStyle(
    fontSize: 18,
    height: 1.8,
    color: AppColors.secondary,
  );

  static const chip = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
}