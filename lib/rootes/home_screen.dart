import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:katatataki/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:katatataki/widgets/my_header.dart';
import 'package:katatataki/widgets/counter.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: const <Widget>[
          MyHeader(
              image: "assets/icons/Drcorona.svg",
              textTop: "ALL you need is story at home",
              textBottom: "is stay at home"),
          SizedBox(height: 20),
        ],
      );
  }
}
