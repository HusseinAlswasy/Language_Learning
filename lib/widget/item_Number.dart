import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learning/model/model.dart';

class Items extends StatefulWidget {
  const Items({Key? key, required this.number}) : super(key: key);

  @override
  final Number number;

  @override
  State<Items> createState() => _ItemsState();
}

late AudioPlayer cache;
bool isPlay = false;

class _ItemsState extends State<Items> {
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.orange,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(widget.number.Image),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  widget.number.EnName,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  widget.number.JpName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
              onPressed: () async {
                if (isPlay) {
                  setState(() {
                    isPlay = false;
                  });
                  StopMusic();
                } else {
                  setState(() {
                    isPlay = true;
                  });
                  cache = AudioPlayer();
                  cache.play(AssetSource(widget.number.sound));
                }
                // AudioCache player =
                //     AudioCache(prefix: 'assets/sounds/numbers/');
                // player.play(
                //     'number_one_sound.mp3'); // will immediately start playing
              },
              icon: isPlay ? Icon(Icons.pause) : Icon(Icons.play_arrow),
              iconSize: 35,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

playMusic() {}

StopMusic() {
  cache.pause();
}
