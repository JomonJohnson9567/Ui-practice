
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToggleContainerWidget extends StatelessWidget {
  const ToggleContainerWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 56, 55, 55),
          borderRadius: BorderRadius.circular(26),
        ),
        child: Row(
          children: [
            SizedBox(width: 20),
            Text(
              title,
              style: GoogleFonts.comicNeue(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            Switch(
              value: true,
              onChanged: (value) {},
              activeColor: const Color.fromARGB(255, 184, 44, 209),
              activeTrackColor: const Color.fromARGB(255, 255, 255, 255),
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.white.withOpacity(0.5),
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
