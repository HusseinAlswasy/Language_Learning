import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learning/model/model.dart';

class Items extends StatefulWidget {
  const Items({Key? key, required this.pharses}) : super(key: key);

  @override
  final pharse pharses;

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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.pharses.EnName,
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
                  Icons.arrow_drop_down_rounded,
                  size: 25,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  widget.pharses.JpName,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(3.0),
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
                  cache.play(AssetSource(widget.pharses.sound));
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
