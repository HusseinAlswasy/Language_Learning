import 'package:flutter/material.dart';
import 'package:learning/model/model.dart';
import '../widget/item_Color.dart';

class Color_page extends StatelessWidget {
  Color_page({super.key});

  @override
  final List<colors> storeData = [
    colors(
      EnName: 'Black',
      JpName: 'Kuro',
      Image: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.wav',
    ),
    colors(
      EnName: 'Brown',
      JpName: 'Chairo',
      Image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.wav',
    ),
    colors(
      EnName: 'Dusty_Yellow',
      JpName: 'Dasuti',
      Image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/dyellow.wav',
    ),
    colors(
      EnName: 'Gray',
      JpName: 'Gurē',
      Image: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.wav',
    ),
    colors(
      EnName: 'Green',
      JpName: 'Midori',
      Image: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.wav',
    ),
    colors(
      EnName: 'Red',
      JpName: 'Aka',
      Image: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.wav',
    ),
    colors(
      EnName: 'White',
      JpName: 'Shiro',
      Image: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.wav',
    ),
    colors(
      EnName: 'Yellow',
      JpName: 'Kiiro',
      Image: 'assets/images/colors/yellow.png',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[500],
        title: Text(
          'Colors',
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
          return Items(color: storeData[index]);
        },
      ),
    );
  }
}
