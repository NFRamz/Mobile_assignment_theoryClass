import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:task2/pages/Login.dart';
import 'package:task2/pages/UserProfile.dart';

import 'package:task2/components/Field.dart';
import 'package:task2/components/buttons/LinkText.dart';
import 'package:task2/components/buttons/PrimaryButton.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    const String backgroundImage = "assets/images/background.jpg";

    final screenHeight  = MediaQuery.of(context).size.height;
    final screenWidth   = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            backgroundImage,
            height: screenHeight * 0.45,
            width : screenWidth * 1,
            fit   : BoxFit.cover,
          ),

          //Sign Up
          Container(
            alignment: Alignment.bottomCenter,
            child    : SingleChildScrollView(
              padding : EdgeInsets.symmetric(horizontal: 12, vertical: 40),
              child   :Column(
                  children: [
                    Text(
                        "Sign-up",
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)
                    ),

                    SizedBox(height: 4),

                    Text(
                      "Let’s get started",
                      style: GoogleFonts.poppins(color: Colors.white70, fontSize: 20),
                    ),

                    SizedBox(height: 70),

                    Field(
                      hintText  : 'Your Full Name',
                      iconkiri  : Icons.person_outline_outlined,
                    ),

                     SizedBox(height: 10),

                    Field(
                      hintText  : 'Email',
                      iconkiri  : Icons.email_outlined,
                    ),

                     SizedBox(height: 10),

                    Field(
                      hintText    : 'Password',
                      iconkiri    : Icons.lock_outline_sharp,
                      obscureText : true,
                    ),

                     SizedBox(height: 10),

                    Field(
                      hintText    : 'Confirm Password',
                      iconkiri    : Icons.lock_outline_sharp,
                      obscureText : true,
                    ),

                     SizedBox(height: 15),

                    PrimaryButton(
                        context       : context,
                        teks          : "Register",
                        halamanTujuan : UserProfile()
                    ),

                     SizedBox(height: 15),

                    LinkText(
                        context       : context,
                        teksBiasa     : "Don't have an account? ",
                        teksLink      : "Register here",
                        halamanTujuan : Login()
                    ),

                     SizedBox(height: 100),
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}


