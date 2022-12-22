import 'package:calculator/components/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {
  final String text;
  final bool newTextColor;

  Display(this.text, this.newTextColor);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: const Color.fromRGBO(50, 50, 50, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                text,
                minFontSize: 14,
                maxFontSize: 75,
                maxLines: 1,
                textAlign: TextAlign.end,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none,
                  fontSize: 75,
                  color: this.newTextColor ? Color.fromARGB(255, 179, 155, 155) : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
