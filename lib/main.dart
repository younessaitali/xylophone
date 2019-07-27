import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
Expanded buildkey(Color color, int numberr){
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: (){
        final AudioCache play = AudioCache();
        play.play('note$numberr.wav');
      },
    ),
  );
}


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.stretch ,
            
            children: <Widget>[
              buildkey(Colors.red, 1),
              buildkey(Colors.orange, 2),
              buildkey(Colors.yellow, 3),
              buildkey(Colors.blue, 4),
              buildkey(Colors.purple, 5),
              buildkey(Colors.teal, 6),
              buildkey(Colors.pink, 7),
            ],
          ),
          ),
        ),
      );
  }
}
