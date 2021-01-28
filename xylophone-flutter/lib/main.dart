import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color1, int noteNumberButton, String text}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(noteNumberButton);
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 26),
        ),
        color: color1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(noteNumberButton: 1, color1: Colors.red, text: 'DO'),
              buildKey(noteNumberButton: 2, color1: Colors.orange, text: 'RE'),
              buildKey(noteNumberButton: 3, color1: Colors.green, text: 'MI'),
              buildKey(noteNumberButton: 4, color1: Colors.indigo, text: 'FA'),
              buildKey(noteNumberButton: 5, color1: Colors.blue, text: 'SOL'),
              buildKey(noteNumberButton: 6, color1: Colors.purple, text: 'LA'),
              buildKey(noteNumberButton: 7, color1: Colors.yellow, text: 'SI')
            ],
          ),
        ),
      ),
    );
  }
}
