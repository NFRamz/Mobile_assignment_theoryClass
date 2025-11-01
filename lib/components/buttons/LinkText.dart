import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget LinkText({String teksBiasa = '', required String teksLink,  required BuildContext context, required Widget halamanTujuan,}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(teksBiasa,
          style: GoogleFonts.poppins(color: Colors.white70, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        TextButton(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context) => halamanTujuan));
            },
          style : TextButton.styleFrom(padding: EdgeInsets.zero),
          child : Text( teksLink,
            style: GoogleFonts.poppins(color: Colors.cyanAccent.shade700, fontSize: 15, fontWeight: FontWeight.bold)
          )
        ),
      ],
    );
  }