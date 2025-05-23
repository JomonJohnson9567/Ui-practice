import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      title: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.comicNeue(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),

      actions: [
        IconButton(
          icon: Icon(icon, color: Colors.white, size: 30),
          onPressed: () {},
        ),
      ],
    );
  }
}
