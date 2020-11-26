import 'package:flutter/material.dart';

class Customizacao extends StatefulWidget {
  @override
  _CustomizacaoState createState() => _CustomizacaoState();
}

class _CustomizacaoState extends State<Customizacao> {
  bool _servico1 = false;
  bool _servico2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customização"),
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text(
                "Serviço 1",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              value: _servico1,
              onChanged: (bool escolha) {
                setState(() {
                  _servico1 = escolha;
                });
              },
            ),
            CheckboxListTile(
              title: Text(
                "Serviço 2",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              value: _servico2,
              onChanged: (bool escolha) {
                setState(() {
                  _servico2 = escolha;
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
