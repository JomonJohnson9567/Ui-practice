
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Transactions',
              style: GoogleFonts.comicNeue(
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            Icon(Icons.more_horiz, color: Colors.white, size: 30),
          ],
        ),
      ],
    );
  }
}