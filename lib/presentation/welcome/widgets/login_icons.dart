
 // ignore_for_file: non_constant_identifier_names
 
import 'package:flutter/material.dart';

Widget SocialButton(IconData icon, Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white10),
      ),
      child: Icon(icon, color: color, size: 30),
    );
  }