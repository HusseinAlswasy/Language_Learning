import 'package:flutter/material.dart';
import 'package:learning/screen/details_page.dart';
import 'package:lottie/lottie.dart';

class container_home_page extends StatelessWidget {
  container_home_page({this.color, this.text, this.onTap, this.image, this.w});

  @override
  Color? color;
  String? text;
  Function()? onTap;
  String? image;
  double? w;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          width: double.infinity,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text(
                  text!,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: w,
                ),
                Lottie.network(
                  image.toString(),
                  height: 110,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
