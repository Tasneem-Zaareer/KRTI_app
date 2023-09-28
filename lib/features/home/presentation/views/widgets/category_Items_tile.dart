import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../product/presentation/views/product_details_page.dart';
import '../../models/card_model.dart';

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
          child: Container(
            // width: 200,
            width: MediaQuery.of(context).size.width * .23,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                //fit: BoxFit.fill,
                image: NetworkImage(card.imagePath),
                // image: AssetImage(category.imagePath),

              ),
            ),
          ),
        ),
        //Text(gift.name),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kPaintingColor,
          ),
          onPressed: () {},
          child: Text(
            'Buy Now',
            style: TextStyle(color: Colors.grey.shade800),
          ),
        )
      ],
    );
  }
}
