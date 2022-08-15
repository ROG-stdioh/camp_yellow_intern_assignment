// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:camp_yellow_intern_assignment/constants.dart';
import 'package:flutter/material.dart';

class HeaderWithBanner extends StatelessWidget {
  const HeaderWithBanner({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      height: size.height * 0.3,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.3 - 27,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/banner.jpg'),
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
          ),
          Container(
            height: size.height * 0.3 - 27,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  kEerieBlack,
                  kGunMetal.withOpacity(0.1),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 90,
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
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 20.0,
                      bottom: 12.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Clan Name: ",
                          style: TextStyle(
                            fontSize: 16,
                            color: kBlueGreen.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          "Lorem Ipsum",
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
                      left: 20.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "28 Members / ",
                          style: TextStyle(
                            fontSize: 16,
                            color: kBlueGreen.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          "5 Online",
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
          )
        ],
      ),
    );
  }
}
