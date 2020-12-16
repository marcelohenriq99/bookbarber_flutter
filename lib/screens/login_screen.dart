import 'package:bookbarber/providers/user_provider.dart';
import 'package:bookbarber/themes/default_theme.dart';
import 'package:bookbarber/utils/app_routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  //attrs
  final void Function(String, String) signUser;

  LoginScreen(this.signUser);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _emailValidate = false;
  bool _passwordValidate = false;
  String _emailValidateMessage = 'Email can not be empty';
  String _passwordValidateMessage = 'Password can not be empty';

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
              padding: const EdgeInsets.all(20.0),
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
                      controller: _emailController,
                      style: TextStyle(color: Colors.white60),
                      cursorColor: DefaultTheme.lightTheme.iconTheme.color,
                      decoration: InputDecoration(
                        errorText:
                            _emailValidate ? _emailValidateMessage : null,
                        labelText: 'Email',
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
                      controller: _passwordController,
                      style: TextStyle(color: Colors.white60),
                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: DefaultTheme.lightTheme.iconTheme.color,
                      decoration: InputDecoration(
                        errorText:
                            _passwordValidate ? _passwordValidateMessage : null,
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
                      obscureText: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 10.0),
                      onPressed: () {
                        if (_emailController.text.isNotEmpty &&
                            _passwordController.text.isNotEmpty) {
                          setState(() {
                            _emailValidate = false;
                            _passwordValidate = false;
                          });
                          widget.signUser(
                              _emailController.text, _passwordController.text);
                          UserProvider.of(context).currentUser != null
                              ? Navigator.pushReplacementNamed(
                                  context, AppRoutes.HOME_ROUTE)
                              : false;
                          // setState(() {
                          //     _emailValidateMessage = 'Wrong email';
                          //     _passwordValidateMessage = 'Wrong password';
                          //   })
                        } else {
                          setState(() {
                            _emailValidate = true;
                            _passwordValidate = true;
                          });
                        }
                      },
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
