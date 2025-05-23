import 'dart:io';

import 'package:flutter/material.dart';

import 'package:ui_design/widgets/bottom_nav.dart';

void main() {
  runApp(const StudioShadowsApp());
  HttpOverrides.global = MyHttpOverrides();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class StudioShadowsApp extends StatelessWidget {
  const StudioShadowsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Studio Shadows',

      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: const Color(0xFF9C27B0), // Purple shade
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF9C27B0),
          primary: const Color(0xFF9C27B0),
          secondary: const Color(0xFFE040FB),
        ),
        fontFamily: 'Roboto',
        // Dark background
      ),
      home: BottomNav(), // WelcomeScreen is the home
    );
  }
}
