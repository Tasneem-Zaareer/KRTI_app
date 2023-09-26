import 'package:flutter/material.dart';

import '../../models/lists/wedding_cart_menu.dart';
import '../category_items_list.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 8, right: 20),
      //child: Divider(color: Colors.red,),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 20)),
          const SizedBox(width: 8,),
          Expanded(child: Divider(thickness: 0.5,color: Colors.grey.shade400,),),
          const SizedBox(width: 8,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  CategoryItemsList(menu: weddingCardMenu,);
                    // return CategoryItemsList(menu: category.giftList,);
                  },
                ),
              );

            },
            child: const Text(
              'view all',
              style: TextStyle(fontSize: 14, color: Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
  }
}
