import 'package:flutter/material.dart';
import '../../widgets/bottomNavigation.dart';
import 'package:game_levels_scrolling_map/game_levels_scrolling_map.dart';
import 'package:game_levels_scrolling_map/model/point_model.dart';

class CarrerScreen extends StatefulWidget {
  const CarrerScreen({super.key});

  @override
  State<CarrerScreen> createState() => _CarrerScreenState();
}

class _CarrerScreenState extends State<CarrerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/career_bg_1.png"),
              fit: BoxFit.cover,
            )),
        child: SingleChildScrollView(

        ),
      ),
      bottomNavigationBar: BottomNavigation(
        screenIndex: 0,
      ),
    );
  }

}
