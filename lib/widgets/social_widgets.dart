import 'package:flutter/material.dart';
import 'package:ui_design/presentation/welcome/widgets/login_icons.dart';

class SocialButtonWidgets extends StatelessWidget {
  const SocialButtonWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(Icons.g_mobiledata, Colors.red),
        const SizedBox(width: 20),
        SocialButton(Icons.apple, Colors.white),
      ],
    );
  }
}