import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../product/presentation/views/product_details_page.dart';
import '../../models/card_model.dart';
import 'horizontal_list_tile.dart';

class CategoryItemsTile extends StatelessWidget {
  const CategoryItemsTile({super.key, required this.card});

  final MyCard card;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ProductDetailsPage(card: card,);
                },
              ),
            );
          },
          child: CachedImage(card: card,),
          // Container(
          //   // width: 200,
          //   width: MediaQuery.of(context).size.width * .23,
          //   height: 80,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(12),
          //     image: DecorationImage(
          //       //fit: BoxFit.fill,
          //       image: NetworkImage(card.imagePath),
          //       // image: AssetImage(category.imagePath),
          //     ),
          //   ),
          // ),
        ),
        BuyNowButton(card: card,),
      ],
    );
  }
}

class CachedImage extends StatelessWidget {
  const CachedImage({super.key, required this.card});
  final MyCard card;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: card.imagePath,
      imageBuilder: (context, imageProvider) =>
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                //fit: BoxFit.cover,
                //colorFilter:
                // ColorFilter.mode(Colors.red, BlendMode.colorBurn),
              ),
            ),
          ),
      placeholder: (context, url) => Center(child: CircularProgressIndicator()),

      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
