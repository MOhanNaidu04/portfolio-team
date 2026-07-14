import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mohan Portfolio",
      theme: appTheme(),
      home: const HomePage(),
    );
  }
}