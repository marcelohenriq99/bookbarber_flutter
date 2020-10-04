import 'package:flutter/material.dart';
//themes
import 'package:bookbarber/themes/default_theme.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0),
        child: Center(
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Positioned(
                top: 350,
                left: screenwidth - 450,
                child: Image.asset(
                  'assets/images/ball_background.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 200,
                    height: 150,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 270,
                    child: Image.asset(
                      'assets/images/barber_art.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                    color: DefaultTheme.lightTheme.iconTheme.color,
                    onPressed: () => print('hello'),
                    child: Text(
                      'Get a serious haircut',
                      style: DefaultTheme.lightTheme.textTheme.headline6,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
