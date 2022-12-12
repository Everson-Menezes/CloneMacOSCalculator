import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final bool isBig;
  final bool functionButton;
  final Color colorBackgroundButton;
  final void Function(String) addValueOnMemory;

  static const op = Color.fromRGBO(255, 129, 0, 1);
  static const defaultColor = Color.fromRGBO(255, 39, 20, 20);
  static const bluedark = Color.fromARGB(255, 92, 136, 230);

  Button({
    required this.text,
    this.isBig = false,
    this.colorBackgroundButton = defaultColor,
    this.functionButton = false,
    required this.addValueOnMemory,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isBig ? 2 : 1,
      child: ElevatedButton(
        child: Text(text),
        onPressed: () => this.addValueOnMemory(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: functionButton ? bluedark : colorBackgroundButton,
          textStyle: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
