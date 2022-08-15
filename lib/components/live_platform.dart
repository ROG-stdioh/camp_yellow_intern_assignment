// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_import

import 'package:camp_yellow_intern_assignment/constants.dart';
import 'package:flutter/material.dart';

class LiveOnPlatform extends StatelessWidget {
  const LiveOnPlatform({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          LiveOnPlatformCard(
            image: 'assets/images/esports_1.jpg',
            text: "Live Trading Championship",
            press: () {},
          ),
          LiveOnPlatformCard(
            image: 'assets/images/esports_2.jpg',
            text: "Treasure Hunt",
            press: () {},
          ),
          LiveOnPlatformCard(
            image: 'assets/images/esports_2.jpg',
            text: "Treasure Hunt",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class LiveOnPlatformCard extends StatelessWidget {
  const LiveOnPlatformCard({
    Key? key,
    required this.image,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String image, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
        child: Container(
          margin: EdgeInsets.only(bottom: 30.0),
          padding: EdgeInsets.all(12),
          width: size.width * 0.6,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: kEerieBlack,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // user
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(image),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // text
                    Container(
                      width: 140,
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                    ),

                    Spacer(),

                    // join now
                    Text(
                      "...Join Now",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white30,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
