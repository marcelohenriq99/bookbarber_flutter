import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.only(left: 20),
            height: 800,
            width: double.infinity,
            color: Colors.blueGrey[800],
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40, right: 20),
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
                                    padding: EdgeInsets.only(left: 50),
                                    child: Image.asset(
                                      "assets/images/1.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 20, right: 50),
                                    child: Text(
                                      "Chegamos",
                                      style: TextStyle(
                                          fontSize: 15,
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
                                    padding: EdgeInsets.only(left: 50),
                                    child: Image.asset(
                                      "assets/images/2.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 20, right: 50),
                                    child: Text(
                                      "Nave",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
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
                                    padding: EdgeInsets.only(left: 50),
                                    child: Image.asset(
                                      "assets/images/3.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 20, right: 50),
                                    child: Text(
                                      "Satelite",
                                      style: TextStyle(
                                          fontSize: 15,
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
                                    padding: EdgeInsets.only(left: 50),
                                    child: Image.asset(
                                      "assets/images/4.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 20, right: 50),
                                    child: Text(
                                      "Lançamento",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      )),
    );
  }
}
