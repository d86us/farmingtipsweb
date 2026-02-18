// app_style.dart
import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color yellow = Color(0xFFFFBA00);
  static const Color green = Color(0xFF00C600);
  static const Color blue = Color(0xFF00B5EE);

  // Add these to fix your errors
  static const Color background = Color(0xFF00C600); // or whatever your main page background should be
  static const Color containerBg = Color(0xFFFFFFFF); // for inner containers
}

class AppTextStyles {
  static const paragraph = TextStyle(fontSize: 22, color: AppColors.black, height: 1.3);
  static const h1 = TextStyle(fontSize: 50, color: AppColors.black, height: 1.1, fontWeight: FontWeight.bold);
  static const h2 = TextStyle(fontSize: 40, color: AppColors.black, fontWeight: FontWeight.bold);
  static const h3 = TextStyle(fontSize: 30, color: AppColors.black, fontWeight: FontWeight.bold);
  static const sectionTitle = TextStyle(fontSize: 24, color: AppColors.black, fontWeight: FontWeight.bold);
  static const yellowSectionTitle = TextStyle(fontSize: 22, color: AppColors.black, fontWeight: FontWeight.bold);
  static const button = TextStyle(fontSize: 30, color: Colors.white);
}

class AppButtons {
  static ButtonStyle primary = ElevatedButton.styleFrom(
    backgroundColor: AppColors.black,
    foregroundColor: Colors.white,
    textStyle: AppTextStyles.button,
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );

  static ButtonStyle yellow = ElevatedButton.styleFrom(
    backgroundColor: AppColors.yellow,
    foregroundColor: AppColors.black,
    textStyle: AppTextStyles.button,
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
}

class AppContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const AppContainer({super.key, required this.child, this.color, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? AppColors.containerBg,
      padding: padding ?? EdgeInsets.all(16),
      child: child,
    );
  }
}

