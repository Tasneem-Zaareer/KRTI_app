import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.star_rate,
              color: Colors.yellow.shade700,
              size: 26,
            ),
            Text(
              ' Do you like this card?',
              style: TextStyle(
                color: Colors.deepPurple.shade300,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 25),
          child: Column(
            children: [
              const Text(
                "If you want to know more details about this amazing card such as:"
                "\n● Price\n● How it looks inside?\n● Colors and many more",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'ALL YOU NEED is to press the button bellow so you can buy it on Amazon.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.deepPurple.shade400,
                    size: 16,
                  ),
                  Text(
                    ' As simple as that!',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
