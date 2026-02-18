// section.dart
import 'package:flutter/material.dart';
import 'app_style.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: Container(
          color: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            children: const [
              Text('Welcome to Farming Tips', style: AppTextStyles.h1),
              SizedBox(height: 16),
              Section(
                title: 'Expert tips for Kenyan crops',
                imageAsset: 'assets/FarmingTips_v1_2.png',
                text:
                    'Farming Tips is a community-driven platform designed to empower farmers with expert knowledge. Access detailed crop guides, professional farming techniques, and localized weather insights—all in one place, for free.',
              ),
              Section(
                title: 'Expert Crop Management',
                imageAsset: 'assets/FarmingTips_v1_1.png',
                text:
                    'Explore an extensive library of crops managed by agricultural experts. Each guide includes high-resolution images and detailed descriptions of planting, maintenance, and harvesting techniques. Whether you are a beginner or an experienced farmer, there is always something new to learn.',
              ),
              Section(
                title: 'Localized Weather Insights',
                imageAsset: 'assets/FarmingTips_v1_3.png',
                text:
                    'Success on the farm starts with the weather. Farming Tips uses your geolocation to provide real-time weather updates and localized forecasts. Plan your planting, irrigation, and harvesting around the conditions in your specific area to maximize your yield.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final String text;
  final String imageAsset;
  const Section({super.key, required this.title, required this.text, required this.imageAsset});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 500, // limit image height
            ),
            child: Image.asset(
              imageAsset,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800), // limit width
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyles.h2,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800), // limit width
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: AppTextStyles.paragraph,
              ),
            ),
          ),
        ],
      ),
    );
  }
}