import 'package:flutter/material.dart';
import '../home.dart';
import '../game/paire.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Home());
      case '/paire':
        return MaterialPageRoute(builder: (_) => const Paire());
    }
  }
}
