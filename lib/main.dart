import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Xylophone(),
      ),
    ),
  );
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color color, int soundNumber) {
    return Expanded(
      child: Card(
        child: FlatButton(
          child: ListTile(
            leading: Icon(
              Icons.fiber_manual_record,
              color: Colors.grey[900],
              size: 35,
            ),
            trailing: Icon(
              Icons.fiber_manual_record,
              color: Colors.grey[900],
              size: 35,
            ),
          ),
          color: color,
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(Colors.red, 1),
          buildKey(Colors.orange, 2),
          buildKey(Colors.yellow, 3),
          buildKey(Colors.green, 4),
          buildKey(Colors.teal, 5),
          buildKey(Colors.blue, 6),
          buildKey(Colors.purple, 7),
        ],
      ),
    );
  }
}
