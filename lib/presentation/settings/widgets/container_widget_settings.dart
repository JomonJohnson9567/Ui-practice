import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerWidget2 extends StatelessWidget {
  const ContainerWidget2({super.key, required this.title, this.subtext});
  final String title;
  final String? subtext;

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
            Text(
              subtext ?? '',
              style: GoogleFonts.comicNeue(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            // ignore: deprecated_member_use
            Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.5)),
            SizedBox(width: 20),
          ],
        ),
      ),
      
    );
  }
}
