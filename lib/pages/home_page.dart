import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final audioplayer = AudioPlayer();

  Future setAudio({required String path}) {
    return audioplayer.setSource(AssetSource(path));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    'Click Photos to get sound',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            await setAudio(path: "sounds/dogbark.wav");
                            audioplayer.play(audioplayer.source!);
                          },
                          child: Container(
                            child: Image.asset("assets/images/dogphoto.jpg"),
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            await setAudio(path: "sounds/catmeow.wav");
                            audioplayer.play(audioplayer.source!);
                          },
                          child: Container(
                            child: Image.asset("assets/images/cat.jpg"),
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            await setAudio(path: "sounds/tigerroar.mp3");
                            audioplayer.play(audioplayer.source!);
                          },
                          child: Container(
                            child: Image.asset("assets/images/tiger.jpg"),
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            await setAudio(path: "sounds/lionroar.wav");
                            audioplayer.play(audioplayer.source!);
                          },
                          child: Container(
                            child: Image.asset("assets/images/lion.jpg"),
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            await setAudio(path: "sounds/horsesound.wav");
                            audioplayer.play(audioplayer.source!);
                          },
                          child: Container(
                            child: Image.asset("assets/images/horse.jpeg"),
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            await setAudio(path: "sounds/cowmoo.wav");
                            audioplayer.play(audioplayer.source!);
                          },
                          child: Container(
                            child: Image.asset("assets/images/cow.jpg"),
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}