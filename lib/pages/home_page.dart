// ignore_for_file: prefer_const_constructors

import 'package:camp_yellow_intern_assignment/constants.dart';
import 'package:camp_yellow_intern_assignment/pages/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kEerieBlack,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            width: 30.0,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
