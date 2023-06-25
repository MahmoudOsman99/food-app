import 'package:flutter/material.dart';
import 'package:food_app/features/auth/presentation/screens/create_new_account.dart';
import 'package:food_app/features/auth/presentation/screens/forgot_password.dart';
import 'package:food_app/features/auth/presentation/screens/signin_screen.dart';

import 'config/themes/light_theme.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Osman',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: CreateNewAccount(),
    );
  }
}
