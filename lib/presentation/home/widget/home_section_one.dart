import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSectionOne extends StatelessWidget {
  const HomeSectionOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Your Balance",
              style: GoogleFonts.comicNeue(
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white70,
              ),
            ),
          ),
    
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  '\$1,000.00',
                  style: GoogleFonts.comicNeue(
                    decoration: TextDecoration.none,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ), // Added left padding here
                child: Column(
                  children: [
                    Icon(
                      Icons.add_circle,
                      color: Colors.white,
                      size: 40, // Changed icon size to 40
                    ),
                    const SizedBox(
                      height: 5,
                    ), // Space between the icon and text
                    Text(
                      'Add Funds',
                      style: GoogleFonts.comicNeue(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

