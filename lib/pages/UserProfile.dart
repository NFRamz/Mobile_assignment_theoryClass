import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:task2/components/ListItem.dart';

class UserProfile extends StatefulWidget {
   UserProfile({super.key});

  @override
  State<UserProfile> createState() => UserProfileState();
}

class UserProfileState extends State<UserProfile> {
  String  nameCity          ="wait..";
  Color   color_textHeader  = Color(0xFFFDC500);
  Color   header_background = Color(0xFF353c5c);

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  Future<void> _getLocation() async {
      final position    = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      final placemarks  = await placemarkFromCoordinates(position.latitude, position.longitude);
      setState(() {
        nameCity = placemarks.first.locality!;
      });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.white,
      appBar          : AppBar(
        backgroundColor: header_background,
        centerTitle    : true,
        title          : Text("THEATER", style: GoogleFonts.poppins(color: color_textHeader, fontWeight: FontWeight.w600)),
        leading        : IconButton(
          icon     : Icon(Icons.arrow_back_ios_new_rounded, color: color_textHeader, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: SingleChildScrollView(
        padding : EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child   : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.location_on_outlined, color: Colors.black, size: 26),

                SizedBox(width: 6),

                Text(
                    nameCity.toUpperCase(), style: GoogleFonts.poppins(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.w700)
                ),

                 SizedBox(width: 4),

                 Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black, size: 22),
              ],
            ),

            SizedBox(height: 20),

            Column(
                children: [
                  ListItem("XI CINEMA"),
                  SizedBox(height: 14),
                  ListItem("PONDOK KELAPA 21"),
                  SizedBox(height: 14),
                  ListItem("CGV"),
                  SizedBox(height: 14),
                  ListItem("CINEPOLIS"),
                  SizedBox(height: 14),
                  ListItem("CP MALL"),
                  SizedBox(height: 14),
                  ListItem("HERMES"),
                ],
            ),
          ],
        ),
      ),
    );
  }
}
