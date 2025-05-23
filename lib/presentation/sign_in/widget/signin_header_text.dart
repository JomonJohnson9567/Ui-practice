import 'package:flutter/material.dart';

class SignInHeaderText extends StatelessWidget {
  const SignInHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Create an",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Text(
                "Account!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE040FB), // Bright purple
                ),
              ),
              SizedBox(width: 10),
              Image(
                image: AssetImage('images/account pic.png'),
                width: 40,
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
