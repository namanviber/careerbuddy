import 'package:careerbuddy/screens/authentication_screens/signIn.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // Text Editing Controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  // Bool Controller
  bool isPassVisible = false;
  bool isConfirmPassVisible = false;

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
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.orangeAccent,
                    decoration: InputDecoration(
                      hintText: "Name",
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.orangeAccent,
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
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
            SizedBox(
              width: MediaQuery.sizeOf(context).width*0.8,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("SignUp", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(PageTransition(
                    type: PageTransitionType.fade, child: SignInScreen()));
              },
              child: RichText(
                text: const TextSpan(
                  text: 'Already Have a Account? ',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                  children: [
                    TextSpan(text: 'SignIn', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange)),
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
