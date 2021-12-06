import 'package:flutter/material.dart';


class BoxInterno extends StatelessWidget {
  BoxInterno({required this.cor});

  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: cor),
    );
  }
}