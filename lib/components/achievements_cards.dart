// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:camp_yellow_intern_assignment/constants.dart';
import 'package:flutter/material.dart';

class AchievementsCard extends StatelessWidget {
  const AchievementsCard({
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
        height: size.height * 0.2 + 30,
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
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Current League: ",
                          style: TextStyle(
                            fontSize: 16,
                            color: kBlueGreen.withOpacity(0.8),
                          ),
                        ),
                        Spacer(),
                        Image.asset("./assets/images/shield.png"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "League Ranking: ",
                          style: TextStyle(
                            fontSize: 16,
                            color: kBlueGreen.withOpacity(0.8),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "11th",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Experience: ",
                          style: TextStyle(
                            fontSize: 16,
                            color: kBlueGreen.withOpacity(0.8),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "2000 xp",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Row(
                      children: [
                        Text(
                          "# of wins: ",
                          style: TextStyle(
                            fontSize: 16,
                            color: kBlueGreen.withOpacity(0.8),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "3",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
