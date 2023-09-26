import 'package:flutter/material.dart';
import '../../models/lists/categories_menu.dart';
import 'categories_tile.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key, required this.menu});

  final List menu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
      child: GridView.count(
        //unable grid view scrolling
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 4,
        mainAxisSpacing: 15,
        scrollDirection: Axis.vertical,
        children: List.generate(
          menu.length,
              (index) {
            return CategoriesTile(category: menu[index]);
          },
        ),
      ),
    );
  }
}
