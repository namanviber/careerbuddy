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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.orangeAccent,
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
                            const BorderSide(color: Colors.orangeAccent, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.orangeAccent, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.orangeAccent,
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
                              const BorderSide(color: Colors.orangeAccent, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.orangeAccent, width: 2),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove_red_eye,
                              color: Colors.orangeAccent,
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
              width: MediaQuery.sizeOf(context).width*0.8,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(PageTransition(
                      type: PageTransitionType.fade, child: HomeScreen()));
                },
                child: const Text("SignIn", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,

                ),
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacement(PageTransition(
                    type: PageTransitionType.fade, child: SignUpScreen()));
              },
              child: RichText(
                text: const TextSpan(
                  text: 'Dont have account yet? ',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                  children: [
                    TextSpan(text: 'SignUp', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
