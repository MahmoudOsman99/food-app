import 'package:flutter/material.dart';
import 'package:food_app/core/router_settings/routes.dart';
import 'package:food_app/features/auth/presentation/screens/signin_screen.dart';

import '../../features/home/presentation/screens/home_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.signinRoute:
        return MaterialPageRoute(builder: (context) => SigninScreen());
      case AppRoutes.homeRoute:
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
