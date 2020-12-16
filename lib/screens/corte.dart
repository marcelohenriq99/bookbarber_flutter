import 'package:flutter/material.dart';

class Corte extends StatefulWidget {
  @override
  _CorteState createState() => _CorteState();
}

class _CorteState extends State<Corte> {
  bool _maquina = false;
  bool _maquinaTesoura = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Corte"),
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text(
                "Maquina",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              value: _maquina,
              onChanged: (bool escolha) {
                setState(() {
                  _maquina = escolha;
                });
              },
            ),
            CheckboxListTile(
              title: Text(
                "Maquina e tesoura",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              value: _maquinaTesoura,
              onChanged: (bool escolha) {
                setState(() {
                  _maquinaTesoura = escolha;
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
