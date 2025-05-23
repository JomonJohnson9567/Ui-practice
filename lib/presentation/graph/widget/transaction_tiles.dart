import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionTile extends StatelessWidget {
  final String title;
  final String timeAndDate;
  final String amount;
  final String status;

  const TransactionTile({
    super.key,
    required this.title,
    required this.timeAndDate,
    required this.amount,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: GoogleFonts.comicNeue(
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              timeAndDate,
              style: GoogleFonts.comicNeue(
                decoration: TextDecoration.none,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white70,
              ),
            ),
            const Spacer(),
            Text(
              amount,
              style: GoogleFonts.comicNeue(
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            Text(
              status,
              style: GoogleFonts.comicNeue(
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: status == 'Success' ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
        const Divider(color: Colors.white30),
      ],
    );
  }
}
