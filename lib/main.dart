import 'package:bookbarber/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:bookbarber/themes/default_theme.dart';
import 'package:bookbarber/utils/app_routes.dart';
import 'package:bookbarber/screens/login_screen.dart';
import 'package:bookbarber/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: DefaultTheme.lightTheme,
      initialRoute: AppRoutes.MAIN_ROUTE,
      routes: {
        AppRoutes.LOGIN_ROUTE: (context) => LoginScreen(),
        AppRoutes.LOGIN_HOME: (context) => Home()
      },
      home: SplashScreen(),
    );
  }
}
