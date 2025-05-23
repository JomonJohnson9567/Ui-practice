import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,

      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 56, 55, 55),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Your Recent Transactions',
              style: GoogleFonts.comicNeue(
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white70,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  '\$1,000',
                  style: GoogleFonts.comicNeue(
                    decoration: TextDecoration.none,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20),
                Icon(Icons.visibility_off, color: Colors.white70),
                const Spacer(),
                Icon(Icons.qr_code_scanner, color: Colors.white, size: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
