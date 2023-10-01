import 'package:flutter/material.dart';
import 'package:krti_app/features/home/presentation/views/items_list_view.dart';
import '../../../../home/presentation/models/card_model.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    // required this.title,
    // required this.image,
    //required this.icon,
    //required this.pageName,
    required this.category,
  });

  final Category category;

  // final String title;
  // final String image;
  //final IconData icon;
  //final Widget pageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(category.imagePath),
        ),
        title: Text(category.name),
        onTap: () {
          Navigator.pop(context);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                // return HomeTab();
                return ItemsListView(menu: category.cardList);
              },
            ),
          );
        },
      ),
    );
  }
}
