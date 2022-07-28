import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flip_card/flip_card.dart';

class Carte extends StatefulWidget {
  Carte({Key? key, required this.couleur, required this.valeur})
      : super(key: key);
  String couleur;
  String valeur;

  @override
  State<Carte> createState() => _CarteState();
}

gameTurn(context) {
  print(context);
}

class _CarteState extends State<Carte> {
  @override
  Widget build(BuildContext context) {
    // TODO: Manually flio the card in order to add function rules game
    return FlipCard(
      fill: Fill
          .fillBack, // Fill the back side of the card to make in the same size as the front.
      direction: FlipDirection.HORIZONTAL, // default
      front: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 77, 77, 77)),
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage("assets/dos-carte.jpg"),
              fit: BoxFit.cover,
            )),
        height: 125,
        width: 80,
      ),
      back: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 77, 77, 77)),
          borderRadius: BorderRadius.circular(16),
        ),
        height: 125,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.valeur,
              style: const TextStyle(
                fontSize: 34,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            Text(
              widget.couleur,
              style: const TextStyle(
                fontSize: 40,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
