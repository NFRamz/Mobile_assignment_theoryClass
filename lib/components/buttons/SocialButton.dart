import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget SocialButton({required Widget icon, required String text,})
{
    return Container(
      height    : 70,
      decoration: BoxDecoration(
        color       : const Color(0xFF060812),
        borderRadius: BorderRadius.circular(5),
        border      : Border.all(color: Colors.white, width: 1),

      ),
      child: Row(
        mainAxisAlignment : MainAxisAlignment.start,
        children          : [
          const SizedBox(width: 20),
          icon,
          const SizedBox(width: 95),
          Text(
            text,
            style: GoogleFonts.poppins(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 16.5),
          ),
        ],
      ),
    );
}
