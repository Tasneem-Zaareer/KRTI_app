import 'package:flutter/material.dart';
import 'package:krti_app/features/home/presentation/views/widgets/app_bar.dart';
import 'widgets/category_Items_tile.dart';

class ItemsListView extends StatelessWidget {
    ItemsListView({super.key,  required this.menu});

   final List menu;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCategory(),
      body: ListView(
        children: [
          //Image.network('https://m.media-amazon.com/images/I/91w7laVWJyL._AC_SX522_.jpg',height: 200,),
          GridView.count(
            //unable grid view scrolling
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 15,
            scrollDirection: Axis.vertical,
            children: List.generate(
              menu.length,
              (index) {
                return CategoryItemsTile(card: menu[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

