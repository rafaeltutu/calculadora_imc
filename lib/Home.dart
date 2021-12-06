import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:harry_potter/constantes.dart';
import 'package:harry_potter/conteudo_icon.dart';
import 'package:harry_potter/tela_principal.dart';
import 'dart:math';


enum Sexo {
  masculino,
  feminino,
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class BotaoArrendodado extends StatelessWidget {
  BotaoArrendodado({required this.icone, required this.aoPressionar});
  final Function aoPressionar;
  final IconData icone;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icone),
      shape: CircleBorder(),
      fillColor: Color(0xFF7E7E7E),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: () {
        aoPressionar();
      },
    );
  }
}


class _HomeState extends State<Home> {

  double altura1 = 1.80;
  double?  resultado;
  String calcular =  'Calcular';
  Sexo? sexoSelecionado = null;
  int altura = 180;
  int peso = 70;
  int idade = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC',  ),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      sexoSelecionado = Sexo.masculino;
                    });
                  },
                  child: BoxExterno(
                    cor: sexoSelecionado == Sexo.masculino
                        ? kCorAtiva
                        : kCorInativa,
                    filhoBox: ConteudoIcone(
                      icone: FontAwesomeIcons.mars,
                      descricao: 'MASCULINO',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      sexoSelecionado = Sexo.feminino;
                    });
                  },
                  child: BoxExterno(
                    cor: sexoSelecionado == Sexo.feminino
                        ? kCorAtiva
                        : kCorInativa,
                    filhoBox: ConteudoIcone(
                      icone: FontAwesomeIcons.venus,
                      descricao: 'FEMININO',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: BoxExterno(
              cor: kCorAtiva,
              filhoBox: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ALTURA',
                    style: kDescricaoTextStyle,
                  ),
                  Row(
                    //Alinhamento na msm linha
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        altura.toString(),
                        style: kStyleNumber,
                      ),
                      Text(
                        'cm',
                        style: kDescricaoTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    activeColor: Color(0xFFFF5822),
                    inactiveColor: Colors.black,
                    value: altura.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double novoValor) {
                      setState(() {
                        altura = novoValor.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BoxExterno(
                    cor: kCorAtiva,
                    filhoBox: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PESO',
                          style: kDescricaoTextStyle,
                        ),
                        Text(
                          peso.toString(),
                          style: kStyleNumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BotaoArrendodado(
                              icone: FontAwesomeIcons.minus,
                              aoPressionar: (){
                                setState(() {
                                  peso --;
                                  //print (peso);
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            BotaoArrendodado(
                              icone: FontAwesomeIcons.plus,
                              aoPressionar: (){
                                setState(() {
                                  peso ++;
                                });
                              },

                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BoxExterno(
                    cor: kCorAtiva,
                    filhoBox: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'IDADE',
                          style: kDescricaoTextStyle,
                        ),
                        Text(
                          idade.toString(),
                          style: kStyleNumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BotaoArrendodado(
                              icone: FontAwesomeIcons.minus,
                              aoPressionar: (){
                                setState(() {
                                  idade --;
                                });
                              },

                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            BotaoArrendodado(
                              icone: FontAwesomeIcons.plus,
                              aoPressionar:(){
                                setState(() {
                                  idade ++;
                                });
                              },

                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kCorLaranja,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kAlturaInferior,
            child: TextButton(onPressed: () {
                 setState(() {

                   resultado = peso/(altura*altura);
                   calcular = resultado.toString();
                   //print(calcular);
                 });
            },
                child: Text( calcular, style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black
                ),),
            ),
          )
        ],
      ),
    );
  }
}

