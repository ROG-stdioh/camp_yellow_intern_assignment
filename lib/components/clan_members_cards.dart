// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:camp_yellow_intern_assignment/constants.dart';
import 'package:flutter/material.dart';

class ClanMembersCard extends StatelessWidget {
  const ClanMembersCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 60.0),
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
            ImageAndUser(
              image: "./assets/images/user_1.jpg",
              user: "Lorum Ipsum",
              position: "Clan Leader",
            ),
            ImageAndUser(
              image: "./assets/images/user_2.jpg",
              user: "Lorum Ipsum",
              position: "Debating Sensei",
            ),
            ImageAndUser(
              image: "./assets/images/user_3.jpg",
              user: "Lorum Ipsum",
              position: "Clan Leader",
            ),
          ],
        ),
      ),
    );
  }
}

class ImageAndUser extends StatelessWidget {
  const ImageAndUser({
    Key? key,
    required this.image,
    required this.user,
    required this.position,
  }) : super(key: key);

  final String image, user, position;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  image,
                  scale: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // user name
                    Text(
                      user,
                      style: TextStyle(
                        color: kBlueGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),

                    SizedBox(height: 4),

                    // position
                    Text(
                      position,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
