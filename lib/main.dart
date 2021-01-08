import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({Color color, int note}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playsound(note);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.blue, note: 1),
                buildKey(color: Colors.teal, note: 2),
                buildKey(color: Colors.red, note: 3),
                buildKey(color: Colors.orange, note: 4),
                buildKey(color: Colors.purple, note: 5),
                buildKey(color: Colors.yellow, note: 6),
                buildKey(color: Colors.green, note: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
