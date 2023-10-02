import 'package:flutter/material.dart';

class IntroPageImage extends StatelessWidget {
  const IntroPageImage({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: 175,
    );
  }
}