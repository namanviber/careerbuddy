import 'package:flutter/material.dart';
import 'package:game_levels_scrolling_map/game_levels_scrolling_map.dart';
import 'package:game_levels_scrolling_map/model/point_model.dart';

import '../../widgets/bottomNavigation.dart';


class CarrerScreen extends StatefulWidget {
  const CarrerScreen({super.key});

  @override
  State<CarrerScreen> createState() => _CarrerScreenState();




}

class _CarrerScreenState extends State<CarrerScreen> {


  @override
  Widget build(BuildContext context) {
    List<PointModel> points = [];
    for(int i = 0; i<50 ; i++){
      PointModel point = PointModel(100,Container(width: 40, height: 40, color: Colors.red, child: Text("$i")));
      /* To make the map scroll to a specific point just make its parameter 'isCurrent' = true like the following which will make the map scroll to it once created*/
      if(i == 20) point.isCurrent = true;

      points.add(point);
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigation(screenIndex: 0,),
      body: Container(
        child: GameLevelsScrollingMap.scrollable(
          imageUrl: "assets/drawable/map_vertical.png",
          direction: Axis.vertical,
          reverseScrolling: true,
          // svgUrl: 'assets/svg/map_vertical.svg',
          points: points,

        ),
      ),
    );
  }

}
