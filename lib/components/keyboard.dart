import 'package:calculator/components/button_row.dart';
import 'package:calculator/components/button.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeyBoard extends StatelessWidget {
  final void Function(String) memoryChange;

  KeyBoard(this.memoryChange);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button(
              addValueOnMemory: memoryChange,
              text: 'Clear',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '%',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '<=',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: 'x',
              functionButton: true,
            )
          ]),
          ButtonRow([
            Button(
              addValueOnMemory: memoryChange,
              text: '7',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '8',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '9',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '+',
              functionButton: true,
            )
          ]),
          ButtonRow([
            Button(
              addValueOnMemory: memoryChange,
              text: '4',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '5',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '6',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '-',
              functionButton: true,
            )
          ]),
          ButtonRow([
            Button(
              addValueOnMemory: memoryChange,
              text: '1',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '2',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '3',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '/',
              functionButton: true,
            )
          ]),
          ButtonRow([
            Button(
              addValueOnMemory: memoryChange,
              text: '0',
              isBig: true,
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '.',
            ),
            Button(
              addValueOnMemory: memoryChange,
              text: '=',
              functionButton: true,
            ),
          ]),
        ],
      ),
    );
  }
}
