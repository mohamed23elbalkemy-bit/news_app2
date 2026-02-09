import 'package:flutter/material.dart';
import 'package:news_app2/ui/screens/navigation/navigation_screen.dart';
import 'package:news_app2/ui/screens/navigation/tabs/categories_tab.dart';
import 'package:news_app2/ui/screens/navigation/tabs/home_tab.dart';
import 'package:news_app2/ui/screens/navigation/tabs/profile_tab.dart';
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

  static MaterialPageRoute get homeTab {
    return MaterialPageRoute(builder: (_) => HomeTab());
  }

  static MaterialPageRoute get categoriesTab {
    return MaterialPageRoute(builder: (_) => CategoriesTab());
  }

  static MaterialPageRoute get profileTab {
    return MaterialPageRoute(builder: (_) => ProfileTab());
  }
}