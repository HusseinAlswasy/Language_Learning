import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learning/model/model.dart';

class Items extends StatefulWidget {
  const Items({Key? key, required this.color}) : super(key: key);

  @override
  final colors color;

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
            child: Image.asset(widget.color.Image),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  widget.color.EnName,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 20,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  widget.color.JpName,
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
                  cache.play(AssetSource(widget.color.sound));
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
