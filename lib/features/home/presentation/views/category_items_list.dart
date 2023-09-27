import 'package:flutter/material.dart';
import 'package:krti_app/constants.dart';
import 'package:krti_app/features/home/presentation/views/widgets/app_bar.dart';

import '../models/card_model.dart';
import 'widgets/category_Items_tile.dart';

class CategoryItemsList extends StatelessWidget {
  const CategoryItemsList({super.key, required this.menu});

  final List menu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCategory(),
      body: GridView.count(
        //unable grid view scrolling
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        mainAxisSpacing: 15,
        scrollDirection: Axis.vertical,
        children: List.generate(
          menu.length,
          (index) {
            return CategoryItemsTile(menu: menu[index]);
          },
        ),
      ),
    );
  }
}


