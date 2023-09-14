import 'package:careerbuddy/screens/home_screens/carrerPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../home_screens/homePage.dart';

class Design3 extends StatelessWidget {
  const Design3({super.key});

  @override
  Widget build(BuildContext context) {
    // Constants
    var size = MediaQuery.of(context).size;

    // Text Editing Controllers
    TextEditingController inputData = TextEditingController();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: size.height * 0.4,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/images/circle_bg_3.png",
                    fit: BoxFit.fill,
                    width: size.width,
                    height: size.height * 0.3,
                  ),
                ),
                Positioned(
                  top: 80,
                  right: 0,
                  height: 250,
                  width: 250,
                  child: Image.asset("assets/images/question_bg_3.png"),
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
                  color: Color(0xffFF5658),
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 10.0,
                  //     color: Colors.grey,
                  //   ),
                  // ],
                ),
                child: Text(
                  "Have You Thought something about your carrer?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                // padding: EdgeInsets.all(16),
                width: size.width - 32,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: TextFormField(
                  controller: inputData,
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffFF5658),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintText: "Answer...",
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color(0xff9e9e9e),
                    ),
                  ),
                )),
            SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(PageTransition(
                    type: PageTransitionType.fade, child: CarrerScreen()));
              },
              child: Container(
                  padding: EdgeInsets.all(16),
                  width: size.width - 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xffFF5658),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Done",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.thumb_up_sharp,
                        color: Color(0xffFFCC00),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/images/progressBar2.png",
            ),
          ],
        ),
      ),
    );
  }
}
