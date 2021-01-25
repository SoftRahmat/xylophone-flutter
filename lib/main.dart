import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Icon(Icons.volume_up),
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.white, soundNumber: 1),
              buildKey(color: Colors.white, soundNumber: 2),
              buildKey(color: Colors.white, soundNumber: 3),
              buildKey(color: Colors.white, soundNumber: 4),
              buildKey(color: Colors.white, soundNumber: 5),
              buildKey(color: Colors.white, soundNumber: 6),
              buildKey(color: Colors.white, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
