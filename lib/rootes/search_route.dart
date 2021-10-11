import 'package:flutter/material.dart';
import 'package:katatataki/rootes/home_screen.dart';
import 'package:katatataki/rootes/shrink_top_list_page.dart';
class SearchRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[
          HomeScreen(),
          ShrinkTopListPage(),
        ],
      ),
    );
  }
}


