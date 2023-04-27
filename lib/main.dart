import 'package:flutter/material.dart';
import 'package:learning/screen/home_page.dart';
import 'package:learning/screen/onBoarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: OnBoardingScreen(),
      ),
    );
  }
}
