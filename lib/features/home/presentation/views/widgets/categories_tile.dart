import 'package:flutter/material.dart';
import '../../models/card_model.dart';
import '../../models/lists/wedding_cart_menu.dart';
import '../items_list_view.dart';

class CategoriesTile extends StatelessWidget {
  const CategoriesTile({super.key, required this.category});

  //final Gift gift;
  final Category category;

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
                  return ItemsListView(menu: category.cartList,);

                  // return CategoryItemsList(menu: category.giftList,);
                },
              ),
            );
          },
          child: CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(category.imagePath),
            // backgroundImage: AssetImage(gift.imagePath),

          ),
        ),
        Text(category.name),
      ],
    );
  }
}
