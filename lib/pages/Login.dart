import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:task2/pages/SignUp.dart';
import 'package:task2/pages/UserProfile.dart';

import 'package:task2/components/Field.dart';
import 'package:task2/components/buttons/LinkText.dart';
import 'package:task2/components/buttons/SocialButton.dart';
import 'package:task2/components/buttons/PrimaryButton.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    const String backgroundImage  = "assets/images/background.jpg";
    const String googleLogo       = "assets/icons/google.png";
    const String fbLogo           = "assets/icons/fb.png";


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

          //login
          Container(
            alignment: Alignment.bottomCenter,
            child    : SingleChildScrollView(
              padding : EdgeInsets.symmetric(horizontal: 15, vertical: 40),
              child   : Column(
                children: [
                  Text(
                    "Login",
                    style: GoogleFonts.poppins(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 4),

                  Text(
                    "Let’s get started",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),

                  SizedBox(height: 60),

                  Field(
                    hintText    : 'Email',
                    iconkiri    : Icons.email_outlined,
                  ),

                  SizedBox(height: 10),

                  Field(
                    hintText    : 'Password',
                    iconkiri    : Icons.lock_outline_sharp,
                    iconKanan   : Icons.remove_red_eye_sharp,
                    obscureText : true,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [LinkText(
                        context       : context,
                        teksLink      : "Forgot Password?",
                        halamanTujuan : SignUp()
                      )
                    ]
                  ),

                  SizedBox(height: 5),

                  PrimaryButton(
                      context       : context,
                      teks          : "Login",
                      halamanTujuan : UserProfile()
                  ),

                  SizedBox(height: 20),

                  // -- or --
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.white, thickness: 1)),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 35),
                        child: Text(
                          "Or",
                          style: GoogleFonts.poppins(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold,),
                        ),
                      ),

                      Expanded(child: Divider(color: Colors.white, thickness: 1)),

                    ],
                  ),

                 SizedBox(height: 20),

                  SocialButton(
                      icon : Image.asset(googleLogo, height: 28),
                      text : 'Login With  Google'
                  ),

                  SizedBox(height: 12),

                  SocialButton(
                      icon : Image.asset(fbLogo, height: 28,),
                      text : 'Login with  Facebook'
                  ),

                  SizedBox(height: 10),

                  LinkText(
                      context       : context,
                      teksBiasa     : "Don't have an account? ",
                      teksLink      : "Register here",
                      halamanTujuan : SignUp()
                  ),

                  SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
