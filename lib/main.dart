import 'package:flutter/material.dart';
import 'home.dart';
import 'game/paire.dart';
import 'components/routeGenerator.dart';

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
        fontFamily: 'Montserrat',
      ),
      routes: {
        '/': (context) => const Home(),
        '/paire': (context) => const Paire(),
      },
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: '/',
    );
  }
}
