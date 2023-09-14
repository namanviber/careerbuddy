import 'package:careerbuddy/screens/home_screens/carrerPage.dart';
import 'package:careerbuddy/screens/home_screens/homePage.dart';
import 'package:careerbuddy/screens/home_screens/wellbeingPage.dart';
import 'package:careerbuddy/screens/questionnaire/design_1.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class BottomNavigation extends StatelessWidget {
  int screenIndex;
  BottomNavigation({super.key, required this.screenIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph), label: "Carrer Analysis"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.medication_liquid), label: "Mental Wellbeing"),
      ],
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.black,
      currentIndex: screenIndex,
      onTap: (index) {
        if (screenIndex == index) {
          Navigator.pop(context);
        }
        screenIndex = index;
        if (screenIndex == 1) {
          Navigator.of(context).pushReplacement(PageTransition(
              type: PageTransitionType.fade, child: HomeScreen()));
        } else if (screenIndex == 0) {
          Navigator.of(context).pushReplacement(PageTransition(
              type: PageTransitionType.fade, child: CarrerScreen()));
        } else if (screenIndex == 2) {
          Navigator.of(context).pushReplacement(PageTransition(
              type: PageTransitionType.fade, child: Design1()));
        }
      },
    );
  }
}
