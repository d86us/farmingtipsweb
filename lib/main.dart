// main.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'header_footer.dart';
import 'sections.dart';
import 'app_style.dart';
import 'terms_page.dart';
import 'privacy_page.dart';

// Only import on web
// ignore: uri_does_not_exist
import 'web_url_strategy.dart'
    if (dart.library.html) 'web_url_strategy.dart';

void main() {
  // safe to call on all platforms
  setPathUrlStrategy();
  runApp(const FarmingTipsApp());
}

class FarmingTipsApp extends StatelessWidget {
  const FarmingTipsApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const HomePage(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: '/terms',
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const TermsPage(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: '/privacy',
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const PrivacyPage(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Farming Tips',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  void scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Header(onLogoTap: scrollToTop), // pass callback
            const HomeContent(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
