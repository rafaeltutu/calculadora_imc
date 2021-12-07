import 'package:flutter/material.dart';
import 'package:harry_potter/componentes/constantes.dart';

class BotaoInferior extends StatelessWidget {
  BotaoInferior({required this.aoPressionar,required this.tituloBotao});
  final Function aoPressionar;
  final String tituloBotao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        aoPressionar();
      },
      child: Container(
        child: Center(
          child: Text(
            tituloBotao,
            style: kBotaoBigFundo,
          ),
        ),
        color: kCorLaranja,
        padding: EdgeInsets.only(top:10.0),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kAlturaInferior,
      ),
    );
  }
}

