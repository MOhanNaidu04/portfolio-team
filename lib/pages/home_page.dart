import 'package:flutter/material.dart';
import '../widgets/common/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [

            Navbar(),

            SizedBox(height: 250),

            Center(
              child: Text(
                "Portfolio Coming Soon",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 900),
          ],
        ),
      ),
    );
  }
}