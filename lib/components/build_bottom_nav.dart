import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildBottomNavBar extends StatelessWidget {
  const BuildBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 10.0),
            child: Icon(
              Icons.home_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(right: 35.0),
            child: SvgPicture.asset(
              "assets/icons/medal.svg",
              height: 25.0,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: SvgPicture.asset(
              "assets/icons/podium.svg",
              height: 30.0,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.group_rounded,
              color: Colors.white,
              size: 35,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.person_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          label: "",
        ),
      ],
    );
  }
}
