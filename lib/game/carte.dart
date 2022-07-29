import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'paire.dart';

class Carte extends StatefulWidget {
  Carte({Key? key, required this.couleur, required this.valeur})
      : super(key: key);
  String couleur;
  String valeur;

  @override
  State<Carte> createState() => _CarteState();
}

class _CarteState extends State<Carte> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: cardKey,
      flipOnTouch: false,
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL, // default
      front: Container(
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 77, 77, 77)),
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage("assets/dos-carte.jpg"),
              fit: BoxFit.cover,
            )),
        height: 125,
        width: 80,
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () {
            cardKey.currentState?.toggleCard();

/*             if (selectedCard.length < 2) {
              selectedCard.add(widget.valeur + widget.couleur);
              print(selectedCard);
            }

            if (selectedCard.length == 2) {
              if (selectedCard[0] == selectedCard[1]) {
                print("bravo");
              } else {
                print("wrong");
                life--;
                if (life == 0) {
                  print("gameover");
                }
              }
            } */
          },
        ),
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
