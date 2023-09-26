class MyCard {
  late String imagePath;
  late String name;
  late String url;

  MyCard({required this.imagePath, required this.name, required this.url});
}

class Category {
  late String imagePath;
  late String name;
  late List cartList;

  // Category({required this.imagePath,required this.name,required this.giftList});
  Category(
      {required this.imagePath, required this.name, required this.cartList});
}

// class Category {
//   late String imagePath;
//   late String name;
//   late List cartList;
//
//   // Category({required this.imagePath,required this.name,required this.giftList});
//   Category({required this.imagePath,required this.name,required this.cartList});
//
// }
