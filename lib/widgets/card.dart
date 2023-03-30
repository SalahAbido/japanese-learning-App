import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final String text;
final Function() onpress;
  const Mycard({super.key, required this.text, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      margin: const EdgeInsets.all(8.0),
      color: Colors.cyanAccent,
      child: InkWell(
        borderRadius: BorderRadius.circular(20.0),
        onTap: onpress,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        )),
      ),
    );
  }
}
