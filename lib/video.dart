import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:fluttertoast/fluttertoast.dart';


class MyVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Videos"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Row(
      
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoRoute()),
              );
              Fluttertoast.showToast(
                  msg: "Video is Played from the Local Assets",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Container(
              height: 150,
              width: 150,
              margin: EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 130.0),
                child: Text(
                  "Ironman",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://cdn141.picsart.com/332430366076201.jpg?type=webp&to=crop&r=256'),
                  fit: BoxFit.cover,
                ),
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NwVideo()),
              );
              Fluttertoast.showToast(
                  msg: "Video is Played from the Network",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Container(
              height: 150,
              width: 150,
              margin: EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 130.0),
                child: Text(
                  "linken-intheend",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://m.media-amazon.com/images/I/41sLRby8fxL._AA256_.jpg'),
                  fit: BoxFit.cover,
                ),
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VideoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Videos"),
        backgroundColor: Colors.amberAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: myvideo(),
    );
  }
}

class NwVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Videos"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: myvideosecond(),
    );
  }
}



myvideo() {
  final videoPlayerController =
      VideoPlayerController.asset("assets/videos/ironman.mp4");
  final chewieController = ChewieController(
    videoPlayerController: videoPlayerController,
    aspectRatio: 3 / 3,
    autoPlay: true,
    looping: false,
  );

  final playerWidget = Chewie(
    controller: chewieController,
  );
  return Column(
    children: <Widget>[
      Container(
        child: playerWidget,
      ),
    ],
  );
}

myvideosecond() {
  final videoPlayerController = VideoPlayerController.network(
      "https://github.com/samyakjain9899/musicappflutter/raw/master/intheend.mp4");
  final chewieController = ChewieController(
    videoPlayerController: videoPlayerController,
    aspectRatio: 3 / 3,
    autoPlay: true,
    looping: false,
  );

  final playerWidget = Chewie(
    controller: chewieController,
  );
  return Column(
    children: <Widget>[
      Container(
        child: playerWidget,
      ),
    ],
  );
}
