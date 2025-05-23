// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ui_design/core/image_urls.dart';
import 'package:ui_design/presentation/welcome/widgets/bottom_text.dart';
import 'package:ui_design/presentation/welcome/widgets/login_button.dart';
import 'package:ui_design/presentation/welcome/widgets/welcome_text.dart';
import 'package:ui_design/presentation/welcome/widgets/welcome_widget.dart';
import 'package:ui_design/widgets/divider_widget.dart';
import 'package:ui_design/widgets/social_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF121212),
          image: DecorationImage(
            image: const NetworkImage(
               baseImgUrl,
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.7),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const SizedBox(height: 40),
                // Logo
                LogoWidget(),
                const Spacer(),
                // Main Call to Action Text
                WelcomeTextWidget(),
                const SizedBox(height: 40),
                // Sign In Button
                LoginButton(),
                const SizedBox(height: 20),
                // OR Sign in with section
                const DividerWidget(),
                const SizedBox(height: 20),
                // Social Sign In
                SocialButtonWidgets(),
                const SizedBox(height: 20),
                // Don't have account
                BottomTextwidget(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


