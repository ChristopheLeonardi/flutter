import 'package:endgame/game/carte.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import '../globals.dart' as globals;

class Paquet {
  var couleurs = ["♥", "♦", "♣", "♦"];
  var valeurs = ["A", "7", "8", "9", "10", "V", "D", "R"];

  dynamic pickCard(count) {
    String couleur = couleurs[Random().nextInt(couleurs.length)];
    String valeur = valeurs[Random().nextInt(valeurs.length)];
    String id = valeur + couleur + count.toString();
    var carte = {
      "couleur": couleur,
      "valeur": valeur,
      "id": id,
    };
    return carte;
  }
}

createMemoryPaquet(paquet) {
  int count = 2; // First card out of while
  while (count != globals.difficulte) {
    var carte = paquet.pickCard(count);
    for (var c in globals.memoryPaquet) {
      if (((carte["valeur"] == c["valeur"]) &&
              (carte["couleur"] == c["couleur"])) ||
          globals.memoryPaquet.isEmpty) {
        while (((carte["valeur"] == c["valeur"]) &&
                (carte["couleur"] == c["couleur"])) ||
            globals.memoryPaquet.isEmpty) {
          carte = paquet.pickCard(count);
        }
      }
    }
    globals.memoryPaquet.add(carte);
    globals.memoryPaquet.add(carte);
    // Les cartes sont intégrées 2 fois pour les doubles
    count++;
  }
  globals.memoryPaquet.shuffle();
  return globals.memoryPaquet;
}

class Paire extends StatefulWidget {
  const Paire({Key? key}) : super(key: key);

  @override
  State<Paire> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Paire> {
  @override
  Widget build(BuildContext context) {
    final Paquet paquet = Paquet();
    globals.memoryPaquet = createMemoryPaquet(paquet);
    return Container(
        color: Colors.white,
        child: Center(
            child: Wrap(
          spacing: 25,
          runSpacing: 25,
          children: List.generate(globals.memoryPaquet.length, (index) {
            return Carte(
              couleur: globals.memoryPaquet[index]["couleur"],
              valeur: globals.memoryPaquet[index]["valeur"],
              id: globals.memoryPaquet[index]["id"],
            );
          }),
        )));
  }
}
