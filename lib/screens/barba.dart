import 'package:flutter/material.dart';

class Bigode extends StatefulWidget {
  @override
  _BigodeState createState() => _BigodeState();
}

class _BigodeState extends State<Bigode> {
  bool _cavanhaqui = false;
  bool _bigode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Barba"),
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text(
                "Cavanhaque",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              value: _cavanhaqui,
              onChanged: (bool escolha) {
                setState(() {
                  _cavanhaqui = escolha;
                });
              },
            ),
            CheckboxListTile(
              title: Text(
                "Bigode",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              value: _bigode,
              onChanged: (bool escolha) {
                setState(() {
                  _bigode = escolha;
                });
              },
            ),
            RaisedButton(
              child: Text("Salvar"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
