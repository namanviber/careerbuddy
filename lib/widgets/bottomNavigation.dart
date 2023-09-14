import 'package:careerbuddy/screens/home_screens/carrerPage.dart';
import 'package:careerbuddy/screens/home_screens/homePage.dart';
import 'package:careerbuddy/screens/home_screens/wellbeingPage.dart';
import 'package:careerbuddy/screens/questionnaire/design_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class BottomNavigation extends StatelessWidget {
  int screenIndex;
  BottomNavigation({super.key, required this.screenIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/career-icon.svg",
              color: screenIndex == 0 ? const Color(0xffFFAA47) : Colors.grey,
              height: 25,
              width: 25,
            ),
            label: "Carrer Analysis"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/work-from-home-icon.svg",
              color: screenIndex == 1 ? const Color(0xffFFAA47) : Colors.grey,
              height: 25,
              width: 25,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/psychological-icon.svg",
              color: screenIndex == 2 ? const Color(0xffFFAA47) : Colors.grey,
              height: 25,
              width: 25,
            ),
            label: "Mental Wellbeing"),
      ],
      selectedItemColor: Color(0xffFFAA47),
      unselectedItemColor: Colors.black,
      currentIndex: screenIndex,
      onTap: (index) {
        if (screenIndex == index) {
          Navigator.pop(context);
        }
        screenIndex = index;
        if (screenIndex == 1) {
          Navigator.of(context).push(PageTransition(
              type: PageTransitionType.fade, child: HomeScreen()));
        } else if (screenIndex == 0) {
          Navigator.of(context).push(PageTransition(
              type: PageTransitionType.fade, child: CarrerScreen()));
        } else if (screenIndex == 2) {
          Navigator.of(context).push(PageTransition(
              type: PageTransitionType.fade, child: WellbeingScreen()));
        }
      },
    );
  }
}
