import 'package:caraoucoroa/resultados.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class jogar extends StatefulWidget {
  const jogar({Key? key}) : super(key: key);

  @override
  _jogarState createState() => _jogarState();
}

class _jogarState extends State<jogar> {
  void _exibirResultado() {
    var itens = ["Cara", "Coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => resultados(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff61bd86),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(16),
            ),
            Image.asset("imagens/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("imagens/botao_jogar.png"),
            )
          ],
        )));
  }
}
