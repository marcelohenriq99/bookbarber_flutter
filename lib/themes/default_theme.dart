import 'package:flutter/material.dart';

class DefaultTheme {
  //
  DefaultTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromRGBO(47, 43, 58, 1), //#2f2b3a
    appBarTheme: AppBarTheme(
      color: Color.fromRGBO(56, 52, 67, 1), // #383443
      iconTheme: IconThemeData(
        color: Color.fromRGBO(142, 99, 58, 1), // #8E633A
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Color.fromRGBO(63, 59, 76, 1), // #3F3B4C
      onPrimary: Color.fromRGBO(63, 59, 76, 1), // #3F3B4C
      primaryVariant: Color.fromRGBO(56, 52, 67, 1), //#383443
      secondary: Color.fromRGBO(93, 79, 94, 1), // #5D4F5E
      onSecondary: Color.fromRGBO(142, 99, 58, 1), // #8E633A
    ),
    cardTheme: CardTheme(
      color: Color.fromRGBO(128, 123, 120, 1), // #807B78
    ),
    iconTheme: IconThemeData(
      color: Color.fromRGBO(142, 99, 58, 1), // #8E633A
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      headline3: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.black,
      onPrimary: Colors.black,
      primaryVariant: Colors.black,
      secondary: Colors.red,
    ),
    cardTheme: CardTheme(
      color: Colors.black,
    ),
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      subtitle: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),
  );
}
