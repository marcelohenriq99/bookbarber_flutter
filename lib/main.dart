<<<<<<< HEAD
import 'package:bookbarber/models/user.dart';
import 'package:bookbarber/providers/user_provider.dart';
=======
import 'package:bookbarber/screens/barba.dart';
import 'package:bookbarber/screens/corte.dart';
import 'package:bookbarber/screens/customizacao.dart';
>>>>>>> 1549482f38717dcfe35ee4d8cc50a96e05a7797c
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

import 'data/dummy_user.dart';
import 'services/encrypt_decrypt_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  //attrs
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  User _currentUser;

  void _signInUser(String email, String password) {
    User user = DUMMY_USERS.firstWhere(
        (user) =>
            user.email == email &&
            user.encPassword == EncryptDecrypt().encryptPhrase(password).base64,
        orElse: () => null);

    setState(() {
      _currentUser = user;
    });
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
=======
    return UserProvider(
      currentUser: _currentUser,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: DefaultTheme.lightTheme,
        initialRoute: AppRoutes.MAIN_ROUTE,
        routes: {
          AppRoutes.MAIN_ROUTE: (context) => SplashScreen(),
          AppRoutes.LOGIN_ROUTE: (context) => LoginScreen(_signInUser),
          AppRoutes.HOME_ROUTE: (context) => HomeScreen(),
        },
      ),
>>>>>>> login
    );
  }
}
