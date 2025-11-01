import 'package:flutter/material.dart';

Widget Field({bool obscureText = false, required String hintText, required IconData iconkiri, IconData? iconKanan})
{
  return Container(
      decoration: BoxDecoration(
        color       : Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        obscureText : obscureText,
        decoration: InputDecoration(
          prefixIcon    : Icon(iconkiri, size: 30, color: Colors.grey,),
          suffixIcon    : Icon(iconKanan),
          hintText      : hintText,
          hintStyle     : TextStyle(color: Colors.grey),
          border        : InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 18),
        ),
      ),
    );
  }
