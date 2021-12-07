import 'package:flutter/material.dart';
import 'package:harry_potter/componentes/cartao_padrao.dart';
import 'package:harry_potter/componentes/constantes.dart';
import 'package:harry_potter/telas/tela_principal.dart';
import 'package:harry_potter/componentes/botao_inferior.dart';

class TelaResultados extends StatelessWidget {

 TelaResultados({required this.interpretacao, required this.resultadoTexto,required this.resultadoImc});

  final String resultadoImc;
  final String resultadoTexto;
  final String interpretacao;

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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Resultado',
                  style: kTituloTextStyle,
                )
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: BoxExterno(
              cor: kCorAtiva,
                filhoBox: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultadoTexto.toUpperCase(), style: kResultadoTextStyle,),
                    Text(resultadoImc, style: kValorTextStyle,),
                    Text(interpretacao,style: kInformativo,textAlign: TextAlign.center,),
                  ],
                )
            ),
          ),
          BotaoInferior(aoPressionar: (){
            Navigator.pop(context);
          }, tituloBotao: 'RECALCULAR'),
        ],
      ),
    );
  }
}
