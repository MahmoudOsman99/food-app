import 'package:flutter/material.dart';
import 'package:food_app/config/routes.dart';
import 'package:food_app/features/signin/presentation/screens/signin_screen.dart';

import '../../features/home/presentation/screens/home_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signinRoute:
        return MaterialPageRoute(builder: (context) => SigninScreen());
      case Routes.homeRoute:
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
