import 'package:flutter/material.dart';
import 'package:krti_app/features/on_boarding_screen/presentation/views/widgets/Intro_page_image.dart';
import 'package:krti_app/features/on_boarding_screen/presentation/views/widgets/intro_page_text.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IntroPageImage(imagePath: 'assets/images/icon3.png',),
              const SizedBox(height: 30),
              IntroPageText(
                title: 'Choose your tools',
                text: 'Land plants are multicellular organisms that can be '
                    'distinguished from other living things by a number of '
                    'characteristics: They make their own food. ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}




