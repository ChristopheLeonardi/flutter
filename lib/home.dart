/* Create mosaique des jeu */

import 'package:flutter/material.dart';
import 'components/inputButton.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('widget.title'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            InputButton(
              name: "paires",
              urlImage: "assets/ico-paire.png",
            ),
            InputButton(
              name: "Second jeu",
              urlImage: "assets/ico-paire.png",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        child: const Icon(Icons.add),
      ),
    );
  }
}
