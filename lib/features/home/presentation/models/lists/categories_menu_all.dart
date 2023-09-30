import 'package:krti_app/features/home/presentation/models/lists/birthday_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/couples_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/dad_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/funny_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/graduation_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/mom_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/wedding_cart_menu.dart';
import '../card_model.dart';
import 'kids_menu.dart';

List categoriesMenuAll = [
  Category(
    imagePath: 'https://m.media-amazon.com/images/I/819rCDDu-0L._AC_SX679_.jpg',
    name: 'Wedding',
    cartList: weddingCardMenu,
  ),
  Category(
    imagePath: 'https://m.media-amazon.com/images/I/81U0LzD4pEL._AC_SX679_.jpg',
    name: 'Graduation',
    cartList: graduationCardMenu,
  ),
  Category(
    imagePath: 'https://m.media-amazon.com/images/I/71Kot-gvyDL._AC_SX679_.jpg',
    name: 'Funny',
    cartList: funnyCardMenu,
  ),
  Category(
    imagePath: 'https://m.media-amazon.com/images/I/81IY3OaASSL._AC_SX679_.jpg',
    name: 'Birthday',
    cartList: birthdayCardMenu,
  ),
  Category(
    imagePath:
        'https://m.media-amazon.com/images/I/712P6OnazPL._AC_SL1500_.jpg',
    name: 'Dad',
    cartList: dadCardMenu,
  ),
  Category(
    imagePath:
        'https://m.media-amazon.com/images/I/71X3DrJU01L._AC_SY879_.jpg',
    name: 'Mom',
    cartList: momCardMenu,
  ),
  Category(
    imagePath:
        'https://m.media-amazon.com/images/I/61D4aaGgVaL._AC_SX679_.jpg',
    name: 'Couples',
    cartList: couplesCardMenu,
  ),
  Category(
    imagePath: 'https://m.media-amazon.com/images/I/91IEUyezCXL._AC_SX679_.jpg',
    name: 'Kids',
    cartList: kidsCardMenu,
  ),

  Category(
    imagePath:
    'https://m.media-amazon.com/images/I/71X3DrJU01L._AC_SY879_.jpg',
    name: 'Mom',
    cartList: momCardMenu,
  ),
  Category(
    imagePath:
    'https://m.media-amazon.com/images/I/61D4aaGgVaL._AC_SX679_.jpg',
    name: 'Couples',
    cartList: couplesCardMenu,
  ),
  Category(
    imagePath: 'https://m.media-amazon.com/images/I/91IEUyezCXL._AC_SX679_.jpg',
    name: 'Kids',
    cartList: kidsCardMenu,
  ),
  Category(
    imagePath:
    'https://m.media-amazon.com/images/I/712P6OnazPL._AC_SL1500_.jpg',
    name: 'Dad',
    cartList: dadCardMenu,
  ),
];

