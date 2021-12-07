import 'package:flutter/material.dart';


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