import 'package:bookbarber/screens/barba.dart';
import 'package:bookbarber/screens/corte.dart';
import 'package:bookbarber/screens/customizacao.dart';
import 'package:bookbarber/screens/home_screen.dart';
import 'package:bookbarber/screens/tratamentos.dart';
import 'package:flutter/material.dart';
import 'package:bookbarber/themes/default_theme.dart';
import 'package:bookbarber/utils/app_routes.dart';
import 'package:bookbarber/screens/login_screen.dart';
import 'package:bookbarber/screens/splash_screen.dart';

//themes
import './themes/default_theme.dart';
//routes
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
        AppRoutes.MAIN_ROUTE: (context) => SplashScreen(),
        AppRoutes.LOGIN_ROUTE: (context) => LoginScreen(),
        AppRoutes.HOME_ROUTE: (context) => HomeScreen(),
        AppRoutes.CORTE_ROUTE: (context) => Corte(),
        AppRoutes.BIGODE_ROUTE: (context) => Bigode(),
        AppRoutes.TRATAMENTO_ROUTE: (context) => Treatamento(),
        AppRoutes.CUSTOMIZACAO_ROUTE: (context) => Customizacao(),
      },
    );
  }
}
