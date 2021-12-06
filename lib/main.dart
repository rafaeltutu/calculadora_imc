import 'package:flutter/material.dart';
import 'package:harry_potter/Home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color(0xFF616161),
      accentColor: Color(0xFFE7461B)
    ),
    home: Home(),
  ));
}

