import 'package:bookbarber/themes/default_theme.dart';
import 'package:bookbarber/utils/app_routes.dart';
import 'package:bookbarber/widgets/home/service_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => false,
                        icon: Icon(
                          Icons.search,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () => false,
                        icon: Icon(
                          Icons.menu,
                          size: 40,
                          color: DefaultTheme.lightTheme.iconTheme.color,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Hey,",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        "Derek",
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.blueGrey[400],
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 40),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ServiceItem(
                              imageIcon: "assets/images/corte.png",
                              label: "Corte",
                              funcao: () {
                                Navigator.pushReplacementNamed(
                                    context, AppRoutes.CORTE_ROUTE);
                              },
                            ),
                            ServiceItem(
                              imageIcon: "assets/images/barba.png",
                              label: "Barba",
                              funcao: () {
                                Navigator.pushReplacementNamed(
                                    context, AppRoutes.BIGODE_ROUTE);
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ServiceItem(
                              imageIcon: "assets/images/tratamento.png",
                              label: "Tratamento",
                              funcao: () {
                                Navigator.pushReplacementNamed(
                                    context, AppRoutes.TRATAMENTO_ROUTE);
                              },
                            ),
                            ServiceItem(
                              imageIcon: "assets/images/customizado.png",
                              label: "Customizado",
                              funcao: () {
                                Navigator.pushReplacementNamed(
                                    context, AppRoutes.CUSTOMIZACAO_ROUTE);
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
