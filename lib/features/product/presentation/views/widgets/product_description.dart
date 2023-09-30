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

            Text(
              'Do you like this card?',
              style: TextStyle(
                color: Colors.deepPurple.shade400,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        const Text(
          "If you want to know more details about this amazing card such as:"
          "\n● Price\n● How it looks inside?\n● Colors and many more",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'ALL YOU NEED is to press to the button bellow so you can buy it on Amazon.',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'As simple as that!',
          style: TextStyle(fontSize: 18,)
        ),
        // Text(
        //   "Description is here you know that you can buy best gift for your mom dad sister from our store Description is here you "
        //       "know that you can buy best gift for your mom dad sister from our"
        //       " store is here you know that you can buy best "
        //       "gift for your mom dad sister from our store is here "
        //       "you know that you can buy best gift for your mom dad"
        //       " sister from our store you know that you can buy best "
        //       "gift for your mom dad you know that you can buy best gift for your mom dad"
        //       "you know that you can buy best gift for your mom dad you know that you can buy best gift for your mom dad",
        //   style: TextStyle(color: Colors.grey[700], height: 2),
        // ),
      ],
    );
  }
}
