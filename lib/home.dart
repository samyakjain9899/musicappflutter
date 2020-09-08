import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



import 'package:music_app/audio.dart';
import 'package:music_app/video.dart';
class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return 
    Scaffold(
  
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('mymusic'),),
        body: 
      
         Center(
           child: Container(
             height: double.infinity,
             
            decoration:BoxDecoration(
             image:DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/75/5f/d8/755fd829e9945a63a55e7b0dbc56db9b.jpg"))),
             
              child: Center(
              child: Center(
                  child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    
                     RaisedButton.icon(
                           color: Color(0xFF9999AA),
                             shape: StadiumBorder(),
        
                       icon: Icon(Icons.audiotrack),
                        label: Text('myaudio')
                      ,onPressed: (){
                           Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAudio()),
                  );
                      },),
                    
                      RaisedButton.icon(
                        shape: StadiumBorder(),
                            color: Color(0xFF9999AA),
                         icon: Icon(Icons.music_video),
                         label: Text('myvideo')
                    ,onPressed: (){
                           Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyVideo()),
                  );
                    },),
                     

                  ],),
                ),
              ),
              ),
         ),
            );
            
  }

}