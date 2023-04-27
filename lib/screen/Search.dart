import 'package:flutter/material.dart';
import 'package:learning/widget/Search_refactor.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search Screen',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigo[500],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 15),
        child: Search(),
      ),
    );
  }
}
