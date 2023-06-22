import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/config/themes/light_theme.dart';
import 'package:food_app/features/signin/presentation/screens/signin_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Osman',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: SigninScreen(),
    );
  }
}
