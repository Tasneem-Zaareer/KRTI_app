import 'package:flutter/material.dart';
import 'package:krti_app/features/drawer/presentation/views/widgets/drawer_list_tile.dart';

import '../../../../core/utils/lists/categories_menu_all.dart';


class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // child: Column(
      //   children: [
          // const DrawerHeader(
          //   child: Text('Image'),
          // ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListView.builder(
              itemCount: categoriesMenuAll.length,
                itemBuilder: (context, index) =>
                    DrawerListTile(category: categoriesMenuAll[index])),
          ),
        //],
     // ),
    );
  }
}
