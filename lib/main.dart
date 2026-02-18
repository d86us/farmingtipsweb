// main.dart
import 'package:flutter/material.dart';
import 'header_footer.dart';
import 'sections.dart';
import 'app_style.dart';
import 'terms_page.dart';
import 'privacy_page.dart';

void main() {
  runApp(const FarmingTipsApp());
}

class FarmingTipsApp extends StatelessWidget {
  const FarmingTipsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farming Tips',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(),
            HomeContent(),
            Footer(),
          ],
        ),
      ),
    );
  }
}