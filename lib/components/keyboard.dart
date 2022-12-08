import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeyBoard extends StatelessWidget {
  final String text;

  KeyBoard(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      child: Column(children: <Widget>[
        ElevatedButton(
          child: null,
          onPressed: () {},
        ),
      ]),
    );
  }
}
