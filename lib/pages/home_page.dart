import 'package:flutter/material.dart';
import '../widgets/common/navbar.dart';
import '../sections/hero/hero_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ScrollController scrollController = ScrollController();

  bool isScrolled = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.offset > 20) {
        if (!isScrolled) {
          setState(() {
            isScrolled = true;
          });
        }
      } else {
        if (isScrolled) {
          setState(() {
            isScrolled = false;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          SingleChildScrollView(
            controller: scrollController,
            child: const Column(
              children: [

                SizedBox(height: 90),

                HeroSection(),

                SizedBox(height: 1000),

              ],
            ),
          ),

          Navbar(
            isScrolled: isScrolled,
          ),

        ],
      ),
    );
  }
}