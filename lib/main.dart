import 'package:bookbarber/models/user.dart';
import 'package:bookbarber/providers/user_provider.dart';
import 'package:bookbarber/screens/home_screen.dart';
import 'package:flutter/material.dart';

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
    );
  }
}
