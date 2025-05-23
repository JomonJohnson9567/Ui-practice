import 'package:flutter/material.dart';

class BottomTextwidget extends StatelessWidget {
  const BottomTextwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "DON'T HAVE ACCOUNT? ",
          style: TextStyle(color: Colors.white60, fontSize: 12),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/signup');
          },
          child: const Text(
            "SIGN UP NOW",
            style: TextStyle(
              color: Color(0xFFE040FB),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}