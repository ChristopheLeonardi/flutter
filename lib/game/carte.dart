import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Carte extends StatefulWidget {
  Carte({Key? key, required this.couleur, required this.valeur})
      : super(key: key);
  String couleur;
  String valeur;

  @override
  State<Carte> createState() => _CarteState();
}

class _CarteState extends State<Carte> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text(widget.couleur),
        Text(widget.valeur),
      ],
    ));
  }
}
