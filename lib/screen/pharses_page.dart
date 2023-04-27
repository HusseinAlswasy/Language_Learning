import 'package:flutter/material.dart';
import 'package:learning/model/model.dart';

import '../widget/item_pharses.dart';

class pharses extends StatelessWidget {
  pharses({super.key});

  @override
  final List<pharse> storeData = [
    pharse(
      EnName: 'Are you coming',
      JpName: 'Kimasu ka',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    pharse(
      EnName: 'Dont forget to subscribe',
      JpName: 'Kōdoku suru koto o wasurenaide kudasai',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    pharse(
      EnName: 'How are you feeling',
      JpName: 'Go kibun wa ikagadesu ka',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    pharse(
      EnName: 'I love anime',
      JpName: 'Watashi wa anime ga daisukidesu',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    pharse(
      EnName: 'I love programming',
      JpName: 'Puroguramingu ga daisuki',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    pharse(
      EnName: 'Programming is easy',
      JpName: 'Puroguramingu wa kantan',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    pharse(
      EnName: 'What is your name',
      JpName: 'Namae wa nandesu ka',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    pharse(
      EnName: 'Where are you going',
      JpName: 'Doko ni iku no',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    pharse(
      EnName: 'Yes im coming',
      JpName: 'Hai kimasu',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[500],
        title: Text(
          'Pharses',
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
          return Items(
            pharses: storeData[index],
          );
        },
      ),
    );
  }
}
