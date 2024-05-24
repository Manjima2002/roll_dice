import 'package:audioplayers/audioplayers.dart';
import 'package:dice/diceprovide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer audioplayer = AudioPlayer();
  Future playAudio() async {
    String audio = 'asseaudio/dice.mp3';
    await audioplayer.play(AssetSource(audio));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Consumer<Diceprovider>(
              builder: (context, dprovider, child) {
                return GestureDetector(
                  onTap: () {
                    dprovider.rollthedice();
                    playAudio();
                  },
                  child: Image.asset(
                    "asset/images/dice-${dprovider.imagenumber}.png",
                    height: 300,
                    width: 300,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
