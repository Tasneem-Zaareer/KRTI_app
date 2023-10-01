import 'package:flutter/material.dart';
import '../../../../../core/utils/lists/header_menu.dart';
import 'header_tile.dart';

class HeaderList extends StatelessWidget {
  const HeaderList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      //width: MediaQuery.of(context).size.width * .8,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: headerMenu.length,
        itemBuilder: (context, index) => HeaderTile(
          card: headerMenu[index],
        ),
      ),
    );
  }
}
