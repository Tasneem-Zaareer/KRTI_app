import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Description",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          "Description is here you know that you can buy best gift for your mom dad sister from our store Description is here you "
              "know that you can buy best gift for your mom dad sister from our"
              " store is here you know that you can buy best "
              "gift for your mom dad sister from our store is here "
              "you know that you can buy best gift for your mom dad"
              " sister from our store you know that you can buy best "
              "gift for your mom dad you know that you can buy best gift for your mom dad"
              "you know that you can buy best gift for your mom dad you know that you can buy best gift for your mom dad",
          style: TextStyle(color: Colors.grey[700], height: 2),
        ),
      ],
    );
  }
}