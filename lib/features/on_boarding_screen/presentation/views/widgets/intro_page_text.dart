import 'package:flutter/material.dart';

class IntroPageText extends StatelessWidget {
  const IntroPageText({super.key, required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(

            fontSize: 15,
            //color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }
}