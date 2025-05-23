
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSectiontwo extends StatelessWidget {
  const HomeSectiontwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Your Cards',
              style: GoogleFonts.comicNeue(
                decoration: TextDecoration.none,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            Icon(Icons.add, color: Colors.white, size: 30),
            Text(
              'New Card',
              style: GoogleFonts.comicNeue(
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}