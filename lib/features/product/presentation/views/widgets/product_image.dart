import 'package:flutter/material.dart';

import '../../../../home/presentation/models/card_model.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.card,
  });

  final MyCard card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Image.network(
        card.imagePath,
        height: 250,
      ),
    );
  }
}