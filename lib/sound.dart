

import 'package:audioplayers/audioplayers.dart';



class Sound {

  Future<void> player(int n)  async {
    final player = AudioPlayer();
    await player.play(
        AssetSource('note$n.mp3')
    );
  }

  Future<void> player2(int n)  async {
    final player = AudioPlayer();
    await player.play(
        AssetSource('$n.mp3')
    );
  }

  Future<void> player3(int n)  async {
    final player = AudioPlayer();
    await player.play(
        AssetSource('n$n.mp3')    );
  }
}