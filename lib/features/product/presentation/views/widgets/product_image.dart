import 'package:cached_network_image/cached_network_image.dart';
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
      child:
      CachedNetworkImage(
        imageUrl: card.imagePath,
        imageBuilder: (context, imageProvider) =>
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,

                image: DecorationImage(
                  image: imageProvider,
                  //fit: BoxFit.cover,
                ),
              ),
            ),
        placeholder: (context, url) => Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),

      // Image.network(
      //   card.imagePath,
      //   height: 250,
      // ),
    );
  }
}
