import 'package:flutter/material.dart';
import 'package:learning/screen/details_page.dart';
import 'package:learning/screen/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class switchScreen {
  String? image;
  String? title;
  String? body;

  switchScreen({
    required this.image,
    required this.title,
    required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardcontroller = PageController(); // علشان التنقل تحت

  List<switchScreen> screen = [
    switchScreen(
      image: 'assets/images/onBoarding/book-link01.jpg',
      title: 'WELCOME',
      body: 'Let\'s learn Japanese',
    ),
  ];
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(), //to didnt give color
                controller: boardcontroller, //to move screen
                onPageChanged: (int index) {
                  if (index == screen.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                    print("Not Last");
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(screen[index]),
                itemCount: 1,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  //packege to move line on way animation
                  count: 1,
                  effect: const ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    dotHeight: 10,
                    dotWidth: 10,
                    expansionFactor: 4,
                    spacing: 5,
                    activeDotColor: Colors.indigo,
                  ),
                  controller: boardcontroller,
                ),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: const Icon(Icons.arrow_forward_ios_rounded),
                  backgroundColor: Colors.indigo[500],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(switchScreen screen) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image(
                height: 280,
                width: 280,
                image: AssetImage(
                  '${screen.image}',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            '${screen.title}',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            '${screen.body}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '日本語を学びましょう',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      );
}
