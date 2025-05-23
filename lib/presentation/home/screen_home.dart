import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design/presentation/home/widget/bottom_image_scroll.dart';
import 'package:ui_design/presentation/home/widget/card_section_home.dart';
import 'package:ui_design/presentation/home/widget/home_section_two.dart';
import 'package:ui_design/presentation/home/widget/home_appbar.dart';
import 'package:ui_design/presentation/home/widget/home_section_one.dart';
import 'package:ui_design/presentation/home/widget/home_text_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              //
              child: HomeAppBarWidget(),
            ),
            const SizedBox(height: 20),
            //section one
            HomeSectionOne(),
            const SizedBox(height: 20),
            //section two
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: HomeSectiontwo(),
            ),
            //Card section
            HomeCardSection(),
            // Text card section
            HomeCardText(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                'Tranfers',
                style: GoogleFonts.comicNeue(
                  decoration: TextDecoration.none,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            // Bottom image scroll
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: BottomImageScroll(),
            ),
          ],
        ),
      ),
    );
  }
}
