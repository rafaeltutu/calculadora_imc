import 'package:flutter/material.dart';
import 'package:harry_potter/componentes/constantes.dart';



class ConteudoIcone extends StatelessWidget {
  ConteudoIcone({required this.icone, required this.descricao});

  final IconData icone;
  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Text("Teste"),
        Icon(
          icone,
          size: 95.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          descricao,
          style: kDescricaoTextStyle,
        ),
      ],
    );
  }
}