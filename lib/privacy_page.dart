import 'package:flutter/material.dart';
import 'header_footer.dart';
import 'app_style.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.background, // green background
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Column(
                children: [
                  const Header(), // header already has white background inside
                  AppContainer(
                    color: AppColors.white,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Privacy Policy', style: AppTextStyles.h1),
                        const SizedBox(height: 16),
                        Text(
                          'Effective from February 10, 2026\nUpdated on February 10, 2026',
                          style: AppTextStyles.paragraph,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Design 86 LLC ("we," "us," or "our") provides the Farming Tips mobile application and its support services. '
                          'This Privacy Policy explains what information we collect, how we use it, and how it is shared when you use our services. '
                          'By using Farming Tips, you agree to the terms of this Privacy Policy.',
                          style: AppTextStyles.paragraph,
                        ),
                        const SizedBox(height: 12),
                        Text('Contact', style: AppTextStyles.h2),
                        Text(
                          'Design 86 LLC\n2108 N ST STE N\nSacramento, CA 95816\nEmail: info@d86.us',
                          style: AppTextStyles.paragraph,
                        ),
                        const SizedBox(height: 12),
                        Text('Information We Collect', style: AppTextStyles.h2),
                        Text(
                          'We collect information to provide a better experience for all our users. The categories of information we collect include:',
                          style: AppTextStyles.paragraph,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Information You Provide',
                          style: AppTextStyles.h3,
                        ),
                        Text(
                          'Account Information: When you register for an account, we collect your email address and password. We do not require your full name or phone number.',
                          style: AppTextStyles.paragraph,
                        ),
                        Text(
                          'Admin Content: If you have administrative privileges, you provide information about crops, including crop names, detailed descriptions, and multiple images. This content is public.',
                          style: AppTextStyles.paragraph,
                        ),
                        Text(
                          'Support Communications: When you contact us for support, we collect the information you volunteer to help us resolve your inquiry.',
                          style: AppTextStyles.paragraph,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Information We Get When You Use Our Services',
                          style: AppTextStyles.h3,
                        ),
                        Text(
                          'Usage and Device Information: hardware model, OS version, unique IDs, internet status.',
                          style: AppTextStyles.paragraph,
                        ),
                        Text(
                          'Location Information (Weather Services): we may collect geolocation to provide local forecasts.',
                          style: AppTextStyles.paragraph,
                        ),
                        Text(
                          'Camera and Photos: Admin users require access to upload images, only images you choose are accessed.',
                          style: AppTextStyles.paragraph,
                        ),
                        const SizedBox(height: 12),
                        Text('How We Use Information', style: AppTextStyles.h2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '• Operate, maintain, and improve the Farming Tips app.',
                              style: AppTextStyles.paragraph,
                            ),
                            Text(
                              '• Provide localized weather data.',
                              style: AppTextStyles.paragraph,
                            ),
                            Text(
                              '• Verify Admin status.',
                              style: AppTextStyles.paragraph,
                            ),
                            Text(
                              '• Enhance security.',
                              style: AppTextStyles.paragraph,
                            ),
                            Text(
                              '• Verify identity to prevent unauthorized access.',
                              style: AppTextStyles.paragraph,
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'How We Share Information',
                          style: AppTextStyles.h2,
                        ),
                        Text(
                          'We do not sell your personal information to third parties. Information is shared as follows:',
                          style: AppTextStyles.paragraph,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '• Public Content: Crop data uploaded by Admins is shared with all users for educational purposes.',
                              style: AppTextStyles.paragraph,
                            ),
                            Text(
                              '• Third-Party Service Providers: Location data may be shared with third-party weather APIs and Firebase.',
                              style: AppTextStyles.paragraph,
                            ),
                            Text(
                              '• Legal and Safety Reasons: We may disclose if required by law or for safety/fraud detection.',
                              style: AppTextStyles.paragraph,
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'How Long We Keep Your Information',
                          style: AppTextStyles.h2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '• Crop Content: kept until an admin deletes it.',
                              style: AppTextStyles.paragraph,
                            ),
                            Text(
                              '• Account Data: stored while account is active.',
                              style: AppTextStyles.paragraph,
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Control Over Your Information',
                          style: AppTextStyles.h2,
                        ),
                        Text(
                          'You are in control of your data: access, correction, deletion. Contact info@d86.us to delete account or images.',
                          style: AppTextStyles.paragraph,
                        ),
                        const SizedBox(height: 12),
                        Text('Children', style: AppTextStyles.h2),
                        Text(
                          'Services are not intended for anyone under 18.',
                          style: AppTextStyles.paragraph,
                        ),
                        const SizedBox(height: 12),
                        Text('Updates', style: AppTextStyles.h2),
                        Text(
                          'Privacy Policy may update periodically. Last Updated date will reflect changes.',
                          style: AppTextStyles.paragraph,
                        ),
                      ],
                    ),
                  ),
                  const Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
