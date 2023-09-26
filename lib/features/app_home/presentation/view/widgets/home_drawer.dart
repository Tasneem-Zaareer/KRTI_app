import 'package:flutter/material.dart';
import 'package:krti_app/features/app_home/presentation/view/app_home.dart';
import 'package:krti_app/features/home/presentation/models/lists/categories_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/dad_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/graduation_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/wedding_cart_menu.dart';
import 'package:krti_app/features/home/presentation/views/category_items_list.dart';
import 'package:krti_app/features/home/presentation/views/widgets/categories_list.dart';

import '../../../../about_us/presentation/views/about_us.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Text('Image'),
          ),
           DrawerListTile(
            title: 'Wedding Cards',
            icon: Icons.people_alt_rounded,
            pageName: CategoryItemsList(menu: weddingCardMenu),
          ),
          DrawerListTile(
            title: 'Graduation Cards',
            icon: Icons.card_giftcard,
            pageName: CategoryItemsList(menu: graduationCardMenu),
          ),
          DrawerListTile(
            title: 'Dad Cards',
            icon: Icons.card_giftcard,
            pageName: CategoryItemsList(menu: dadCardMenu),
          ),

        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.pageName,
  });

  final String title;
  final IconData icon;
  final Widget pageName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              // return HomeTab();
              return pageName;
            },
          ),
        );
      },
    );
  }
}
