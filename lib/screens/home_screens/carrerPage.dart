import 'package:flutter/material.dart';
import 'package:level_map/level_map.dart';
import 'package:page_transition/page_transition.dart';

import '../../widgets/bottomNavigation.dart';
import '../questionnaire/design_1.dart';

class CarrerScreen extends StatefulWidget {
  const CarrerScreen({super.key});

  @override
  State<CarrerScreen> createState() => _CarrerScreenState();
}

class _CarrerScreenState extends State<CarrerScreen> {
  @override
  Widget build(BuildContext context) {
    // App Constant
    var size = MediaQuery.of(context).size;
    double currentLevel = 2;

    return Scaffold(
      body: LevelMap(
        backgroundColor: Color(0xffcdeccc),
        levelMapParams: LevelMapParams(
          levelCount: 20,
          currentLevel: currentLevel,
          pathColor: Color(0xfff7db89),
          pathStrokeWidth: 30,
          levelHeight: 150,
          enableVariationBetweenCurves: false,
          currentLevelImage: ImageParams(
            path: "assets/images/i1.png",
            size: Size(60, 60),
          ),
          lockedLevelImage: ImageParams(
            path: "assets/images/i1.png",
            size: Size(40, 40),
          ),
          completedLevelImage: ImageParams(
            path: "assets/images/i1.png",
            size: Size(40, 40),
          ),
          startLevelImage: ImageParams(
            path: "assets/images/i2.png",
            size: Size(50, 50),
          ),
          pathEndImage: ImageParams(
            path: "assets/images/i2.png",
            size: Size(50, 50),
          ),
          bgImagesToBePaintedRandomly: [
            ImageParams(
                path: "assets/images/windmill.png",
                size: Size(100, 100),
                repeatCountPerLevel: 0.25),
            ImageParams(
                path: "assets/images/trhouse.png",
                size: Size(100, 100),
                repeatCountPerLevel: 0.25),
            ImageParams(
                path: "assets/images/tree.png",
                size: Size(100, 100),
                repeatCountPerLevel: 0.25),
            ImageParams(
                path: "assets/images/mountain.png",
                size: Size(100, 100),
                repeatCountPerLevel: 0.25),
            ImageParams(
                path: "assets/images/house.png",
                size: Size(100, 100),
                repeatCountPerLevel: 0.25),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        screenIndex: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(
          Icons.play_arrow_outlined,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).push(
              PageTransition(type: PageTransitionType.fade, child: Design1()));
        },
      ),
    );
  }
}
