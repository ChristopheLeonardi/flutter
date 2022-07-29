import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'rules.dart';

class Carte extends StatefulWidget {
  Carte(
      {Key? key, required this.couleur, required this.valeur, required this.id})
      : super(key: key);
  String couleur;
  String valeur;
  String id;

  @override
  State<Carte> createState() => _CarteState();
}

class _CarteState extends State<Carte> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  Rules rules = Rules();

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: cardKey,
      flipOnTouch: false,
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL, // default
      front: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 77, 77, 77)),
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage("assets/dos-carte.jpg"),
              fit: BoxFit.cover,
            )),
        height: 150,
        width: 80,
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () {
            cardKey.currentState?.toggleCard();
            setState(() {
              var result =
                  rules.arraySelected(widget.valeur, widget.couleur, widget.id);
              switch (result) {
                case "gameover":
                  break;
                case "winner":
                  break;
                default:
                  break;
              }
              print(result);
            });
          },
        ),
      ),
      back: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 77, 77, 77)),
          borderRadius: BorderRadius.circular(16),
        ),
        height: 150,
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
            FloatingActionButton(
              backgroundColor: Colors.transparent,
              elevation: 0,
              onPressed: () {
                //cardKey.currentState?.toggleCard();
              },
            ),
          ],
        ),
      ),
    );
  }
}
