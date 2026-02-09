import 'package:flutter/material.dart';
import 'package:news_app2/ui/screens/navigation/navigation_screen.dart';
import 'package:news_app2/ui/screens/onboarding/onboarding1.dart';
import 'package:news_app2/ui/screens/onboarding/onboarding2.dart';
import 'package:news_app2/ui/screens/onboarding/onboarding3.dart';
import 'package:news_app2/ui/screens/splash/splash_screen.dart';

abstract final class AppRoutes {
  static MaterialPageRoute get splashScreen {
    return MaterialPageRoute(builder: (_) => SplashScreen());
  }

  static MaterialPageRoute get onboarding1Screen {
    return MaterialPageRoute(builder: (_) => Onboarding1());
  }

  static MaterialPageRoute get onboarding2Screen {
    return MaterialPageRoute(builder: (_) => Onboarding2());
  }

  static MaterialPageRoute get onboarding3Screen {
    return MaterialPageRoute(builder: (_) => Onboarding3());
  }

  static MaterialPageRoute get navigtionScreen {
    return MaterialPageRoute(builder: (_) => NavigationScreen());
  }
}