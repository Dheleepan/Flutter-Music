import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void player(int number) {
    final player = AudioCache();
    player.play('audios/note$number.wav');
  }

  Expanded builtkey ({required Color color,required int number}){
    return Expanded(
      child: Container(
        child: FlatButton(
          color: color,
          onPressed: () {
            player(number);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Music'),
          elevation: 10,
          shadowColor: Colors.black,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builtkey(color: Colors.red, number: 1),
              builtkey(color: Colors.blue, number: 2),
              builtkey(color: Colors.green, number: 3),
              builtkey(color: Colors.orange, number: 4),
              builtkey(color: Colors.yellow, number: 5),
              builtkey(color: Colors.purple, number: 6),
              builtkey(color: Colors.pink, number: 7),
        ]),
      ),
    );
  }
}
