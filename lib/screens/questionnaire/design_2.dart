import 'package:careerbuddy/screens/questionnaire/design_3.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../home_screens/homePage.dart';

class Design2 extends StatelessWidget {
  const Design2({super.key});

  @override
  Widget build(BuildContext context) {
    // Constants
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: size.height * 0.4,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "assets/images/circle_bg.png",
                  // fit: BoxFit.fill,
                  // width: size.width,
                  height: size.height * 0.3,
                ),
              ),
              Positioned(
                top: 80,
                right: 0,
                height: 250,
                width: 250,
                child: Image.asset("assets/images/question_bg_2.png"),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(16),
              width: size.width - 32,
              decoration: const BoxDecoration(
                border: Border(),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xffF0C063),
                // boxShadow: [
                //   BoxShadow(
                //     blurRadius: 10.0,
                //     color: Colors.grey,
                //   ),
                // ],
              ),
              child: Text(
                "Have You Thought something about your carrer?",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacement(PageTransition(
                      type: PageTransitionType.fade, child: Design3()));
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    // boxShadow: [
                    //   BoxShadow(
                    //     blurRadius: 15.0,
                    //     color: Color(0xffFFAA47),
                    //   ),
                    // ],
                  ),
                  child: Text(
                    "Option 1",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: size.width * 0.3,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 15.0,
                  //     color: Color(0xffFFAA47),
                  //   ),
                  // ],
                ),
                child: Text(
                  "Option 2",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                width: size.width * 0.3,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 15.0,
                  //     color: Color(0xffFFAA47),
                  //   ),
                  // ],
                ),
                child: Text(
                  "Option 3",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: size.width * 0.3,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 15.0,
                  //     color: Color(0xffFFAA47),
                  //   ),
                  // ],
                ),
                child: Text(
                  "Option 4",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 120,
          ),
          Image.asset(
            "assets/images/progressBar1.png",
          ),
        ],
      ),
    );
  }
}
