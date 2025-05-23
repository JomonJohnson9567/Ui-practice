import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconThemewidget extends StatelessWidget {
  const IconThemewidget({super.key, required this.icon, required this.text});
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(
          text,
          style: GoogleFonts.comicNeue(
            decoration: TextDecoration.none,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
