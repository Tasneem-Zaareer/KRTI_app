import 'package:flutter/material.dart';
import 'package:krti_app/features/home/presentation/views/widgets/title_section.dart';
import 'horizontal_list_tile.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView(
      {super.key, required this.menu, required this.title});

  final List menu;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: [
          TitleSection(title: title, menu: menu),
          SizedBox(
            height: MediaQuery.of(context).size.height * .21,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              // itemCount: menu.length,
              itemCount: 6,
              itemBuilder: (context, index) =>
                  HorizontalListTile(card: menu[index]),
            ),
          )
        ],
      ),
      //),
    );
  }
}
