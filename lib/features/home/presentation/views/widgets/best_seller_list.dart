import 'package:flutter/material.dart';
import 'best_seller_tile.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key, required this.menu});

  final List menu;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .21,
        child: ListView.builder(

          scrollDirection: Axis.horizontal,
          // itemCount: menu.length,
          itemCount: 6,

          itemBuilder: (context, index) => HorizontalListTile(card: menu[index]),
        ),
      ),
    );
  }
}
