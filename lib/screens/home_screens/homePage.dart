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
    // Constants
    var size = MediaQuery.of(context).size;

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
                  Navigator.of(context).push(PageTransition(
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Explore Careers",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: size.height * 0.2,
                width: size.width - 32,
                child: Card(
                  elevation: 10,
                  color: const Color(0xff1E548E),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.5,
                          child: Column(
                            children: [
                              const Text(
                                "Don’t know which career options to choose ?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    color: Color(0xffF0C063),
                                  ),
                                  child: const Text(
                                    "Explore",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/images/home_card_bg.png",
                          height: 100,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Explore Different Streams",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: size.width * 0.3,
                            height: 160,
                            child: Card(
                              color: const Color(0xffFFB703),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/home_icon1.png",
                                      height: 100,
                                    ),
                                    const Text(
                                      "Architecture & Engineering",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: size.width * 0.3,
                            height: 160,
                            child: Card(
                              color: const Color(0xffE5383B),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/home_icon4.png",
                                      height: 100,
                                    ),
                                    const Text(
                                      "Communication",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: size.width * 0.3,
                            height: 160,
                            child: Card(
                              color: const Color(0xff9BB1FF),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/home_icon7.png",
                                      height: 100,
                                    ),
                                    const Text(
                                      "Law",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            width: size.width * 0.3,
                            height: 160,
                            child: Card(
                              color: const Color(0xff48CAE4),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/home_icon2.png",
                                      height: 100,
                                    ),
                                    const Text(
                                      "Arts & Entertainment",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: size.width * 0.3,
                            height: 160,
                            child: Card(
                              color: const Color(0xffA682FF),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/home_icon5.png",
                                      height: 100,
                                    ),
                                    const Text(
                                      "Education",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: size.width * 0.3,
                            height: 160,
                            child: Card(
                              color: const Color(0xffF9C74F),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/home_icon8.png",
                                      height: 100,
                                    ),
                                    const Text(
                                      "Sports",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: size.width * 0.3,
                            height: 160,
                            child: Card(
                              color: const Color(0xff8AC926),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/home_icon3.png",
                                      height: 100,
                                    ),
                                    const Text(
                                      "Business & Management",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: size.width * 0.3,
                            height: 160,
                            child: Card(
                              color: const Color(0xffF4A261),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/home_icon6.png",
                                      height: 100,
                                    ),
                                    const Text(
                                      "Health & Medicine",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: size.width * 0.3,
                            height: 160,
                            child: Card(
                              color: const Color(0xff49AEFF),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/home_icon9.png",
                                      height: 100,
                                    ),
                                    const Text(
                                      "Sales",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        screenIndex: 1,
      ),
    );
  }
}
