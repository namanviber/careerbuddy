import 'package:careerbuddy/screens/authentication_screens/signUp.dart';
import 'package:careerbuddy/screens/home_screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // Text Editing Controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Bool Controller
  bool isPassVisible = false;

  @override
  Widget build(BuildContext context) {
    // Constants
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset(
                "assets/images/logo.png",
                // fit: BoxFit.fill,
                // width: size.width,
                height: size.height * 0.2,
              ),
              SizedBox(height: 50,),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Color(0xffFFCC00),
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xff9e9e9e),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffFFCC00), width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffFFCC00), width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      cursorColor: Color(0xffFFCC00),
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xff9e9e9e),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xffFFCC00), width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xffFFCC00), width: 2),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.remove_red_eye,
                                color: Color(0xffFFCC00),
                              ))),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 14),
                    )),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width -32,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.fade, child: HomeScreen()));
                  },
                  child: const Text("SignIn", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFCC00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(PageTransition(
                      type: PageTransitionType.fade, child: SignUpScreen()));
                },
                child: RichText(
                  text: const TextSpan(
                    text: 'Dont have account yet? ',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                    children: [
                      TextSpan(text: 'SignUp', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffFFCC00))),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Text("or Continue with", style: TextStyle(color: Color(0xff9e9e9e), fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      width: size.width * 0.15,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "assets/images/google.png",
                      )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      width: size.width * 0.15,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "assets/images/facebook.png",
                      )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    width: size.width * 0.15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      "assets/images/apple.png",
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
