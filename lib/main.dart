import 'package:flutter/material.dart';
import 'package:katatataki/const/character.dart';
import 'package:katatataki/root.dart';
import 'package:katatataki/rootes/home_screen.dart';
import 'package:katatataki/rootes/shrink_top_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // デバックモードを消す
      title: 'Welcome to Flutter',
      home: Scaffold(
//        body: ShrinkTopListPage(),
        body: HomeScreen(),
        bottomNavigationBar: RootWidget(),
      ),
    );
  }
}
