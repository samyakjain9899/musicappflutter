import 'package:flutter/material.dart';




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/home.dart';
import 'package:music_app/audio.dart';
import 'package:music_app/video.dart';
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'audio.dart';



main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/":(context)=>MyHome()
      },
  ));
}


