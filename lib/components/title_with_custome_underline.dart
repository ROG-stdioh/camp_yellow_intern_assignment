// ignore_for_file: prefer_const_constructors

import 'package:camp_yellow_intern_assignment/constants.dart';
import 'package:flutter/material.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({Key? key, required this.text})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 24,
        alignment: Alignment.topLeft,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(right: 5.0),
                height: 7,
                color: kBlueGreen.withOpacity(0.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
