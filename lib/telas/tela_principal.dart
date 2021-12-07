import 'package:flutter/material.dart';

class BoxExterno extends StatelessWidget {
  BoxExterno({required this.cor, this.filhoBox});

  final Color cor;
  final Widget? filhoBox;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: filhoBox,
      margin: EdgeInsets.all(20.0),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(8.0),
          color: cor),
    );
  }
}
