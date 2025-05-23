import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoButtonWidgets extends StatelessWidget {
  const TwoButtonWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 247, 242, 242),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                'Spendings',
                style: GoogleFonts.comicNeue(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 7, 6, 6),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 49, 46, 46),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                'Spendings',
                style: GoogleFonts.comicNeue(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(255, 247, 245, 245),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
