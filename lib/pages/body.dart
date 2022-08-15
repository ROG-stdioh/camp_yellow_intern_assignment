// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_import

import 'package:camp_yellow_intern_assignment/components/achievements_cards.dart';
import 'package:camp_yellow_intern_assignment/components/clan_members_cards.dart';
import 'package:camp_yellow_intern_assignment/components/discussions_cards.dart';
import 'package:camp_yellow_intern_assignment/components/header_with_banner.dart';
import 'package:camp_yellow_intern_assignment/components/live_platform.dart';
import 'package:camp_yellow_intern_assignment/components/past_performance.dart';
import 'package:camp_yellow_intern_assignment/components/title_with_custome_underline.dart';
import 'package:camp_yellow_intern_assignment/components/title_with_more_button.dart';
import 'package:camp_yellow_intern_assignment/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithBanner(size: size),
          TitleWithCustomUnderline(text: "Achievements"),
          AchievementsCard(size: size),
          TitleWithMoreButton(text: "Past Featured Performance", press: () {}),
          PastPerformance(),
          TitleWithMoreButton(text: "Live on Platform", press: () {}),
          LiveOnPlatform(),
          TitleWithMoreButton(text: "Clan Discussions", press: () {}),
          DiscussionsCard(size: size),
          TitleWithMoreButton(text: "Clan Members", press: () {}),
          ClanMembersCard(size: size),
        ],
      ),
    );
  }
}
