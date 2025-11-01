import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget PrimaryButton({required BuildContext context, required String teks, required Widget halamanTujuan})
{
  final screenWidth   = MediaQuery.of(context).size.width;
  final screenHeight  = MediaQuery.of(context).size.height;

  return Container(
      width     : screenWidth * 1,
      height    :  screenHeight * 0.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color       : Color(0xFF353c5c),
        boxShadow   : [
          BoxShadow(color: Colors.blue.withOpacity(0.3), blurRadius: 20, offset: const Offset(0, 10))
        ],
      ),
      child       : TextButton(
        onPressed : () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => halamanTujuan));
        },
        child: Text(teks,
          style: GoogleFonts.poppins(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)
        ),
      ),
    );
  }