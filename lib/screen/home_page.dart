import 'package:flutter/material.dart';
import 'package:learning/model/model.dart';
import 'package:learning/screen/Family_Memebers.dart';
import 'package:learning/screen/Search.dart';
import 'package:learning/screen/color.dart';
import 'package:learning/screen/details_page.dart';
import 'package:learning/screen/pharses_page.dart';
import 'package:learning/widget/Search_refactor.dart';
import 'package:learning/widget/item_home_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[500],
        title: Text(
          'Items',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Search(),
          container_home_page(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => details_page(),
                ),
              );
            },
            color: Color(0xffF9E2AF),
            text: 'Numbers',
            w: 150,
            image:
                'https://assets3.lottiefiles.com/private_files/lf30_khak9ubl.json',
          ),
          container_home_page(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Family_Members(),
                ),
              );
            },
            color: Color(0xff009FBD),
            text: 'Family Mumbers',
            w: 80,
            image:
                'https://assets2.lottiefiles.com/private_files/lf30_6fdhxu9o.json',
          ),
          container_home_page(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Color_page(),
                ),
              );
            },
            color: Color(0xff210062),
            text: 'Colors',
            w: 160,
            image:
                'https://assets9.lottiefiles.com/packages/lf20_DAQGHst8du.json',
          ),
          container_home_page(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => pharses(),
                ),
              );
            },
            color: Color(0xff77037B),
            text: 'Pharses',
            w: 140,
            image: 'https://assets8.lottiefiles.com/packages/lf20_tnrzlN.json',
          ),
        ],
      ),
    );
  }
}
