import 'package:careerbuddy/screens/authentication_screens/signIn.dart';
import 'package:careerbuddy/screens/home_screens/homePage.dart';
import 'package:careerbuddy/screens/questionnaire/design_1.dart';
import 'package:careerbuddy/screens/questionnaire/design_2.dart';
import 'package:careerbuddy/screens/questionnaire/design_3.dart';
import 'package:flutter/material.dart';
import 'utilities/themeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "CarrerBuddy",
      theme: ThemeClass.lightTheme,
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
