import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              XylophoneSoundBar(
                colorBar: Colors.purple,
                audio: 'note1.wav',
              ),
              XylophoneSoundBar(
                colorBar: Colors.indigo,
                audio: 'note2.wav',
              ),
              XylophoneSoundBar(
                colorBar: Colors.blue,
                audio: 'note3.wav',
              ),
              XylophoneSoundBar(
                colorBar: Colors.green,
                audio: 'note4.wav',
              ),
              XylophoneSoundBar(
                colorBar: Colors.yellow,
                audio: 'note5.wav',
              ),
              XylophoneSoundBar(
                colorBar: Colors.orange,
                audio: 'note6.wav',
              ),
              XylophoneSoundBar(
                colorBar: Colors.red,
                audio: 'note7.wav',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneSoundBar extends StatelessWidget {
  final Color colorBar;
  final String audio;

  const XylophoneSoundBar({Key key, this.colorBar, this.audio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: colorBar,
        onPressed: () {
          final player = AudioCache();
          player.play(audio);
        },
        child: Container(
          width: double.infinity,
        ),
      ),
    );
  }
}
