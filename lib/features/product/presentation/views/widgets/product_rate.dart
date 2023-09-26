import 'package:flutter/material.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow[700],
        ),
        const Text('4.4'),
      ],
    );
  }
}