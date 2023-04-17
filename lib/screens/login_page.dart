import 'package:flutter/material.dart';

import 'componets/btn.dart';
import 'componets/logo.image.dart';
import 'componets/textfiled.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenHight = MediaQuery.of(context)
        .size
        .height; // define screen height for responsive design
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: screenHight * 0.02),

          // logo ------------------------------
          const LogoImage(),

          // textfields ---------------------------------
          MyTextField(lableText: 'email', controller: emailController),
          MyTextField(lableText: 'password', controller: passwordController),

          // forgot pasword -----------------------------------
          Padding(
            padding: EdgeInsets.only(top: 19, bottom: screenHight * 0.02),
            child: GestureDetector(
                onTap: () {
                  // do something
                },
                child: Text('forgot password?',
                    style: Theme.of(context).textTheme.bodySmall)),
          ),

          // sign in button ----------------------------------
          GestureDetector(
            onTap: () {
              emailController.clear();
              passwordController.clear();
            },
            child: const MyBtn(
              btnName: 'Sign In',
            ),
          ),

          // sign in other opthins ---------------------------
          Padding(
            padding: EdgeInsets.only(
                top: screenHight * 0.01, bottom: screenHight * 0.01),
            child: Text('or', style: Theme.of(context).textTheme.bodySmall),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    // do something
                  },
                  child: Image.asset("lib/assets/icons/google.png")),
              const SizedBox(width: 31),
              GestureDetector(
                  onTap: () {
                    // do something
                  },
                  child: Image.asset("lib/assets/icons/facebook.png")),
            ],
          ),

          // push to sign up page ---------------------------------------
          Padding(
            padding: EdgeInsets.only(top: (screenHight * 0.05)),
            child: GestureDetector(
              onTap: () {
                // do something
              },
              child: const Text("Don't have an account? Sign Up",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Color.fromARGB(255, 241, 64, 64))),
            ),
          )
        ],
      ),
    );
  }
}
