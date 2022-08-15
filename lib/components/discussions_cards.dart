// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:camp_yellow_intern_assignment/constants.dart';
import 'package:flutter/material.dart';

class DiscussionsCard extends StatelessWidget {
  const DiscussionsCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 30.0),
        width: size.width,
        height: size.height * 0.2 + 40,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              kEerieBlack,
              kGunMetal,
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 50),
              blurRadius: 50,
              color: Colors.white12.withOpacity(0.01),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MessageAndHeading(
              heading: "#General Thread",
              message: "15 unread messages",
            ),
            LiveMessageAndHeading(
              heading: "Anyone enthu for trading league",
              message: "15 unread messages",
            ),
            LiveMessageAndHeading(
              heading: "Guys! New event comping up!",
              message: "10 unread messages",
            ),
          ],
        ),
      ),
    );
  }
}

class MessageAndHeading extends StatelessWidget {
  const MessageAndHeading({
    Key? key,
    required this.heading,
    required this.message,
  }) : super(key: key);

  final String heading, message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heading
          Text(
            heading,
            style: TextStyle(
              color: kBlueGreen,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          SizedBox(height: 4),

          // message
          Text(message),
        ],
      ),
    );
  }
}

class LiveMessageAndHeading extends StatelessWidget {
  const LiveMessageAndHeading({
    Key? key,
    required this.heading,
    required this.message,
  }) : super(key: key);

  final String heading, message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heading
          Row(
            children: [
              Text(
                "(Live) ",
                style: TextStyle(
                  color: Colors.red[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                heading,
                style: TextStyle(
                  color: kBlueGreen,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),

          SizedBox(height: 4),

          // message
          Text(message),
        ],
      ),
    );
  }
}
