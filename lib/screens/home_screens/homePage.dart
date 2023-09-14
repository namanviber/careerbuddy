import 'package:careerbuddy/screens/authentication_screens/signIn.dart';
import 'package:careerbuddy/widgets/bottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: (){
            Navigator.of(context).pushReplacement(PageTransition(
                type: PageTransitionType.fade, child: SignInScreen()));
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
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.line_style,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
            },
          )
        ],
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(
        //         Icons.line_style,
        //       ),
        //       onPressed: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //     );
        //   },
        // ),
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigation(screenIndex: 1,),
    );
  }
}
