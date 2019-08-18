import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(int noteNumber) {
    player.play('note$noteNumber.wav');
  }

  Widget buildKeyboard(int key, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(key);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKeyboard(1, Colors.red),
              buildKeyboard(2, Colors.orange),
              buildKeyboard(3, Colors.yellow),
              buildKeyboard(4, Colors.green),
              buildKeyboard(5, Colors.teal),
              buildKeyboard(6, Colors.blue),
              buildKeyboard(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
