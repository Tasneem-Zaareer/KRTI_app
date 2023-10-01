import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../models/card_model.dart';
import '../items_list_view.dart';

class CategoriesTile extends StatelessWidget {
  const CategoriesTile({super.key, required this.category});

  //final Gift gift;
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GoToItemsListView(category: category),
        Text(category.name),
      ],
    );
  }
}

class GoToItemsListView extends StatelessWidget {
  const GoToItemsListView({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ItemsListView(menu: category.cardList,);

              // return CategoryItemsList(menu: category.giftList,);
            },
          ),
        );
      },
      // child: MyImage(category: category),
      child: CachedImage(category: category,),

    );
  }
}

class CachedImage extends StatelessWidget {
  const CachedImage({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: category.imagePath,
      imageBuilder: (context, imageProvider) =>
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
                //colorFilter:
                // ColorFilter.mode(Colors.red, BlendMode.colorBurn),
              ),
            ),
          ),
      placeholder: (context, url) => Center(child: CircularProgressIndicator()),

      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}

// class MyImage extends StatelessWidget {
//   const MyImage({
//     super.key,
//     required this.category,
//   });
//
//   final Category category;
//
//   @override
//   Widget build(BuildContext context) {
//     return CircleAvatar(
//       radius: 35,
//       backgroundImage: NetworkImage(category.imagePath),
//       // backgroundImage: AssetImage(gift.imagePath),
//
//     );
//   }
// }




