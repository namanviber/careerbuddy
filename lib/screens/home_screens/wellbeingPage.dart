import 'package:careerbuddy/widgets/bottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../authentication_screens/signIn.dart';

class WellbeingScreen extends StatefulWidget {
  const WellbeingScreen({super.key});

  @override
  State<WellbeingScreen> createState() => _WellbeingScreenState();
}

class _WellbeingScreenState extends State<WellbeingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Hii, Naman",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff9e9e9e)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(PageTransition(
                      type: PageTransitionType.fade,
                      child: const SignInScreen()));
                },
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).cardColor,
                  radius: 20,
                  child: Text(
                    "N",
                    style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).textTheme.titleSmall!.color),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigation(screenIndex: 2,),
    );
  }
}
