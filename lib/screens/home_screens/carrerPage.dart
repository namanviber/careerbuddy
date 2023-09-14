import 'package:flutter/material.dart';

import '../../widgets/bottomNavigation.dart';

class CarrerScreen extends StatefulWidget {
  const CarrerScreen({super.key});

  @override
  State<CarrerScreen> createState() => _CarrerScreenState();
}

class _CarrerScreenState extends State<CarrerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(screenIndex: 0,),
    );
  }
}
