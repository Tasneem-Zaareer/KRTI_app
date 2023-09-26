import 'package:flutter/material.dart';
import '../../models/card_model.dart';

class HeaderTile extends StatelessWidget {
  const HeaderTile({super.key, required this.card});

  final MyCard card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        // width: 200,
        width: MediaQuery.of(context).size.width * .7,

        decoration: BoxDecoration(
          color: Colors.yellow,
          //borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(card.imagePath),
            // image: NetworkImage(gift.imagePath),

          ),
        ),
      ),
    );
  }
}
