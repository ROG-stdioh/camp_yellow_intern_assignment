// ignore_for_file: prefer_const_constructors

import 'package:camp_yellow_intern_assignment/components/title_with_custome_underline.dart';
import 'package:camp_yellow_intern_assignment/constants.dart';
import 'package:flutter/material.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        TitleWithCustomUnderline(text: text),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: kBlueGreen.withOpacity(0.5), // Background Color
            ),
            onPressed: press(),
            child: Text(
              "More",
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
