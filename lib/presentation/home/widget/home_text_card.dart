
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCardText extends StatelessWidget {
  const HomeCardText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          'Card Details',
          style: GoogleFonts.comicNeue(
            decoration: TextDecoration.none,
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
 