import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ListItem(String theaterName) {
  return Container(
    height: 70,
    decoration: BoxDecoration(
      color: Color(0xFFeeeeed),
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 4, offset: Offset(0, 3))
      ],
    ),

    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            theaterName,
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 15.5, color: const Color(0xFF53606c)),
          ),
          const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black54, size: 28),
        ],
      ),
    ),
  );
}