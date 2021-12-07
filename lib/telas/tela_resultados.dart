import 'package:flutter/material.dart';
import 'package:harry_potter/cartao_padrao.dart';
import 'package:harry_potter/constantes.dart';
import 'package:harry_potter/tela_principal.dart';

class TelaResultados extends StatelessWidget {
  const TelaResultados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Resultado',
                style: kTituloTextStyle,
              )
            ],
          ),
          Expanded(
            flex: 5,
            child: BoxExterno(
              cor: kCorAtiva,
                filhoBox: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('normal', style: kResultadoTextStyle,),
                    Text('18.9', style: kValorTextStyle,),
                    Text('Peso normal',style: kInformativo,textAlign: TextAlign.center,),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
