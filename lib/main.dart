import 'package:flutter/material.dart';
import 'home.dart';
import 'game/paire.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Jeux de Carte',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Luxia',
        ),
        routes: {
          '/': (context) => Home(),
          '/paire': (context) => Paire(),
        });
  }
}
