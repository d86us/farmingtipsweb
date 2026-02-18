// header_footer.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'app_style.dart';
import 'package:go_router/go_router.dart';

class Header extends StatefulWidget {
  final VoidCallback? onLogoTap; // new property
  const Header({super.key, this.onLogoTap});

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool menuOpen = false;

  void toggleMenu() => setState(() => menuOpen = !menuOpen);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Full-width green background
        Container(
          color: AppColors.background,
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Container(
                color: AppColors.white, // white inner box
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        behavior: HitTestBehavior
                            .opaque, // Captures clicks on transparent areas
                        onTap: () {
                          context.go('/');
                          widget.onLogoTap?.call();
                          setState(() => menuOpen = false);
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors
                              .click, // Changes cursor to a hand/pointer
                          opaque:
                              true, // Ensures the cursor changes even over transparent pixels
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/FarmingTipsLogo_v1.png',
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        menuOpen ? 'assets/close.svg' : 'assets/menu.svg',
                        height: 60,
                      ),
                      onPressed: toggleMenu,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (menuOpen)
          // Full-width menu on green background
          Container(
            color: AppColors.background,
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1000),
                child: Column(
                  children: [
                    MenuButton('Home', () => context.go('/')),
                    MenuButton('Terms of Use', () => context.go('/terms')),
                    MenuButton('Privacy Policy', () => context.go('/privacy')),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class MenuButton extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  const MenuButton(this.title, this.onTap, {super.key});
  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: isHover ? AppColors.yellow : AppColors.black,
            border: const Border(
              bottom: BorderSide(color: Colors.white, width: 3),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Text(
            widget.title,
            style: TextStyle(
              color: isHover ? AppColors.black : Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background, // page background green
      width: double.infinity,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Container(
            color: AppColors.yellow, // footer box background
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              children: [
                Text(
                  'Boost your harvest with Farming Tips for Android.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.h2,
                ),
                const SizedBox(height: 12),
                Text(
                  'Get Farming Tips for your Android smartphone.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.paragraph,
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  style: AppButtons.primary,
                  onPressed: () => launchUrl(
                    Uri.parse(
                      'https://play.google.com/store/apps/details?id=us.d86.farmingtips',
                    ),
                  ),
                  child: const Text('Download Now'),
                ),
                const SizedBox(height: 12),
                Text(
                  '© 2026 Smokeless College. All rights reserved.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.paragraph,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
