import 'package:flutter/material.dart';
import 'package:learning/model/model.dart';
import 'package:learning/widget/item_Number.dart';

class details_page extends StatelessWidget {
  details_page({Key? key}) : super(key: key);

  @override
  final List<Number> storeData = [
    Number(
      EnName: 'One',
      JpName: 'Ichi',
      Image: 'assets/images/numbers/number_one.png',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      EnName: 'Two',
      JpName: 'Ni',
      Image: 'assets/images/numbers/number_two.png',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Number(
      EnName: 'Three',
      JpName: 'Mittsu',
      Image: 'assets/images/numbers/number_three.png',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Number(
      EnName: 'Four',
      JpName: 'Shi',
      Image: 'assets/images/numbers/number_four.png',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Number(
      EnName: 'Five',
      JpName: 'Go',
      Image: 'assets/images/numbers/number_five.png',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Number(
      EnName: 'Six',
      JpName: 'Roku',
      Image: 'assets/images/numbers/number_six.png',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Number(
      EnName: 'Seven',
      JpName: 'Sebun',
      Image: 'assets/images/numbers/number_seven.png',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Number(
      EnName: 'Eight',
      JpName: 'Nozomi',
      Image: 'assets/images/numbers/number_eight.png',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Number(
      EnName: 'Nine',
      JpName: 'Kyu',
      Image: 'assets/images/numbers/number_nine.png',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Number(
      EnName: 'Ten',
      JpName: 'Ju',
      Image: 'assets/images/numbers/number_ten.png',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[500],
        title: Text(
          'Numbers',
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Container(
          width: double.infinity,
          height: 0.5,
          color: Colors.white,
        ),
        itemCount: storeData.length,
        itemBuilder: (context, index) {
          return Items(number: storeData[index]);
        },
      ),
    );
  }
}
