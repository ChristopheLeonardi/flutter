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
  List memoryPaquet = [];
  while (count != globals.difficulte) {
    var carte = paquet.pickCard(count);
    for (var c in memoryPaquet) {
      if (((carte["valeur"] == c["valeur"]) &&
              (carte["couleur"] == c["couleur"])) ||
          memoryPaquet.isEmpty) {
        while (((carte["valeur"] == c["valeur"]) &&
                (carte["couleur"] == c["couleur"])) ||
            memoryPaquet.isEmpty) {
          carte = paquet.pickCard(count);
        }
      }
    }
    memoryPaquet.add(carte);
    memoryPaquet.add(carte);
    // Les cartes sont intégrées 2 fois pour les doubles
    count++;
  }
  memoryPaquet.shuffle();
  return memoryPaquet;
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
    var memoryPaquet = createMemoryPaquet(paquet);
    return Container(
        color: Colors.white,
        child: Center(
            child: Wrap(
          spacing: 25,
          runSpacing: 25,
          children: List.generate(memoryPaquet.length, (index) {
            return Carte(
              couleur: memoryPaquet[index]["couleur"],
              valeur: memoryPaquet[index]["valeur"],
              id: memoryPaquet[index]["id"],
            );
          }),
        )));
  }
}
