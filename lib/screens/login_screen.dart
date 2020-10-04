import 'package:bookbarber/themes/default_theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              top: -(screenHeigth / 5),
              left: (screenWidth / 6),
              width: 600,
              height: 600,
              child: Image.asset(
                'assets/images/ball_background.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 62,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 20.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white60),
                      cursorColor: DefaultTheme.lightTheme.iconTheme.color,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: DefaultTheme.lightTheme.textTheme.headline3,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: DefaultTheme.lightTheme.iconTheme.color),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: DefaultTheme.lightTheme.iconTheme.color),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 20.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white60),
                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: DefaultTheme.lightTheme.iconTheme.color,
                      decoration: InputDecoration(
                        labelText: 'password',
                        labelStyle: DefaultTheme.lightTheme.textTheme.headline3,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: DefaultTheme.lightTheme.iconTheme.color),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: DefaultTheme.lightTheme.iconTheme.color),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 10.0),
                      onPressed: () => print('hello'),
                      color: DefaultTheme.lightTheme.iconTheme.color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'sing in',
                        style: DefaultTheme.lightTheme.textTheme.headline6,
                      ),
                    ),
                  ),
                  Spacer(),
                  FlatButton(
                    onPressed: () => false,
                    child: Text(
                      'You don`t have account? \n\r sing up now.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
