import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/config/themes/light_theme.dart';
import 'package:food_app/features/auth/presentation/screens/signin_screen.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const FoodApp());
  });
}
