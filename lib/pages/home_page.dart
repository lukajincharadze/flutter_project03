import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final audioplayer = AudioPlayer();

  Future setAudio({required String path}) async {
    await audioplayer.setSource(AssetSource(path));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
                await setAudio(path: "sounds/dogbark.wav");
                 audioplayer.play(audioplayer.source!);
              },
              child: Container(
                  child: Image.asset("assets/images/dogphoto.jpg"),
                  width: 400,
                  height: 400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
