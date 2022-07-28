import 'package:flutter/material.dart';

class InputButton extends StatefulWidget {
  const InputButton({Key? key, required this.name, required this.urlImage})
      : super(key: key);
  final String name;
  final String urlImage;
  @override
  State<InputButton> createState() => _InputButtonState();
}

class _InputButtonState extends State<InputButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(25, 35, 25, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 243, 243, 243),
      ),
      child: Container(
          padding: const EdgeInsets.all(25),
          child: RawMaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/paire');
              },
              child: Column(children: [
                Image.asset(
                  '${widget.urlImage}',
                  width: 250,
                  height: 250,
                ),
                Text(widget.name.toUpperCase(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 24))
              ]))),
    );
  }
}
