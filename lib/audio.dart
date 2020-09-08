
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyAudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio songs"),
        backgroundColor: Colors.amberAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: myapp(),
      backgroundColor: Colors.black,
    );
  }
}

myapp() {
  AudioPlayer advancedPlayer = new  AudioPlayer();
  AudioCache audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
     
      RaisedButton(
        child: Row(
          children: <Widget>[
            Icon(Icons.queue_music),
            Text("Taki taki"),
          ],
        ),
        onPressed: () {
          advancedPlayer.play(
              "https://github.com/samyakjain9899/musicappflutter/raw/master/DJ%20Snake%20-%20Taki%20Taki%20ft.%20Selena%20Gomez%2C%20Ozuna%2C%20Cardi%20B.mp3");
              Fluttertoast.showToast(
              msg: "Song is Played from the Network",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0);
        },
        elevation: 20.0,
      ),
      RaisedButton(
        child: Row(
          children: <Widget>[
            Icon(Icons.queue_music),
            Text("Believer"),
          ],
        ),
        onPressed: () {
          audioCache.play("believer.m3");
          Fluttertoast.showToast(
              msg: "Song is Played from the local assets",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0);
        },
        elevation: 20.0,
      ),
      RaisedButton(
        child: Row(
          children: <Widget>[
            Icon(Icons.queue_music),
            Text("Tokyo drift"),
          ],
        ),
        onPressed: () {
          advancedPlayer.play(
              "https://github.com/samyakjain9899/musicappflutter/raw/master/Fast%20And%20Furious%20-%20Tokyo%20Drift%20(Remix)%20(Mp3Goo.com).mp3");
              Fluttertoast.showToast(
              msg: "Song is Played from the Network",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0);
        },
        elevation: 20.0,
      ),
 
 
    
    
      Padding(
        padding: const EdgeInsets.only(top: 425),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _IBtn(
              onPressed: () => advancedPlayer.resume(),
              ico: Icons.play_arrow,
            ),
            _IBtn(
              onPressed: () => advancedPlayer.pause(),
              ico: Icons.pause,
            ),
            _IBtn(
              onPressed: () => advancedPlayer.stop(),
              ico: Icons.stop,
            ),
          ],
        ),
      ),
    ],
  );
}

class _IBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final ico;

  const _IBtn({Key key, this.onPressed, this.ico}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(ico),
      onPressed: onPressed,
      iconSize: 50.0,
      color: Colors.white,
    );
  }
}
