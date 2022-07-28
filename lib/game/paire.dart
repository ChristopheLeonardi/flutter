import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Paire extends StatefulWidget {
  const Paire({Key? key}) : super(key: key);

  @override
  State<Paire> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Paire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("test"),
    );
  }
}
