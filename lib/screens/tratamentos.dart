import 'package:flutter/material.dart';

class Treatamento extends StatefulWidget {
  @override
  _TreatamentoState createState() => _TreatamentoState();
}

class _TreatamentoState extends State<Treatamento> {
  bool _idratacao = false;
  bool _ducha = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tratamentos"),
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text(
                "Idratação",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              value: _idratacao,
              onChanged: (bool escolha) {
                setState(() {
                  _idratacao = escolha;
                });
              },
            ),
            CheckboxListTile(
              title: Text(
                "Ducha",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              value: _ducha,
              onChanged: (bool escolha) {
                setState(() {
                  _ducha = escolha;
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
