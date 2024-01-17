import 'package:flutter/material.dart';

import '../../../../features/education/presentation/screens/onboarding/onboarding_page_one_screen.dart';
import '../screens/landing_page_screen.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const OnboardingPageOneScreen(),
        );
      case '/landing_page':
        return MaterialPageRoute(
          builder: (_) => const LandingPageScreen(),
        );

        // write other cases here

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
