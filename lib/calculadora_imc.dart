import 'package:flutter/material.dart';
import 'dart:math';

class CalculadoraImc {

  CalculadoraImc({required this.altura, required this.peso});
  final int altura;
  final int peso;
  double _imc = 0.0;


  String calculaImc(){
    _imc = peso/ pow(altura / 100,2);
    return _imc.toStringAsFixed(1);
  }

  String obterResultado (){
    if(_imc >=25){
     return 'Acima do peso!';
    }else if(_imc >18.5){
      return 'Peso Ideal!';
    }else{
      return 'Abaixo do Peso!';
    }
  }

  String obterInterpretacao(){
    if (_imc >= 25) {
      return 'Você está com o peso acima do normal. Tente se execitar mais.';
    } else if (_imc > 18.5) {
      return 'Excelente! Seu peso está normal';
    } else {
      return 'Você está com o peso abaixo do normal. Procure comer um pouco mais';
    }
  }
}