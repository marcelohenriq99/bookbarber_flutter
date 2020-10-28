import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
              top: -(screenHeigth / 1.5),
              left: -(screenWidth / 1),
              width: 800,
              height: 800,
              child: Image.asset(
                'assets/images/ball_background1.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/Lupa.png",
                            height: 30,
                            width: 30,
                          ),
                          Image.asset(
                            "assets/images/Pesquisa.png",
                            height: 35,
                            width: 35,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30, top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Hey,",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Text(
                            "Derek",
                            style: TextStyle(
                                fontSize: 45,
                                color: Colors.blueGrey[400],
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 60),
                              child: Container(
                                height: 1,
                                color: Colors.brown[300],
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: Text(
                              "Services",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.blueGrey[400],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: SingleChildScrollView(
                                clipBehavior: Clip.none,
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 40),
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.brown[300],
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                              bottomLeft: Radius.circular(20))),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 40, top: 10, right: 5),
                                            child: Image.asset(
                                              "assets/images/corte.png",
                                              height: 80,
                                              width: 80,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, right: 50),
                                            child: Text(
                                              "Corte",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.brown[300],
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                              bottomLeft: Radius.circular(20))),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 40, top: 10, right: 5),
                                            child: Image.asset(
                                              "assets/images/barba.png",
                                              height: 80,
                                              width: 80,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, right: 50),
                                            child: Text(
                                              "Barba",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: SingleChildScrollView(
                                clipBehavior: Clip.none,
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 40),
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.brown[300],
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                              bottomLeft: Radius.circular(20))),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 40, top: 10, right: 5),
                                            child: Image.asset(
                                              "assets/images/tratamento.png",
                                              height: 80,
                                              width: 80,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "Tratamentos",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.brown[300],
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                              bottomLeft: Radius.circular(20))),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 40, top: 10, right: 5),
                                            child: Image.asset(
                                              "assets/images/customizado.png",
                                              height: 80,
                                              width: 80,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 2, top: 20),
                                            child: Text(
                                              "Customizados",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
