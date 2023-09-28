import 'package:flutter/material.dart';
import 'package:krti_app/features/home/presentation/models/card_model.dart';

import '../../models/lists/wedding_cart_menu.dart';
import '../items_list_view.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.title, required this.menu});

  final String title;
  final List menu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 8, right: 15),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 20)),
          const SizedBox(width: 8),
          DividerPage(),
          const SizedBox(width: 8),
          ViewAllList(menu: menu),
        ],
      ),
    );
  }
}

class DividerPage extends StatelessWidget {
  const DividerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        thickness: 0.5,
        color: Colors.grey.shade400,
      ),
    );
  }
}

class ViewAllList extends StatelessWidget {
  const ViewAllList({
    super.key,
    required this.menu,
  });

  final List menu;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ItemsListView(
                menu: menu,
              );
            },
          ),
        );
      },
      child: const Text(
        'view all',
        style: TextStyle(fontSize: 14, color: Colors.blueAccent),
      ),
    );
  }
}
