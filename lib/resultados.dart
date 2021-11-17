import 'package:flutter/material.dart';

class resultados extends StatefulWidget {
  // const resultados({Key? key}) : super(key: key);

  String valor;

  resultados(this.valor);

  @override
  _resultadosState createState() => _resultadosState();
}

class _resultadosState extends State<resultados> {
  @override
  Widget build(BuildContext context) {
    // print(widget.valor);
    var caminhoImagem = "imagens/moeda_cara.png";
    if (widget.valor == "Cara") {
      caminhoImagem = "imagens/moeda_cara.png";
    } else {
      caminhoImagem = "imagens/moeda_coroa.png";
    }
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("imagens/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
