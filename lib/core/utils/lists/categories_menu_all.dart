import 'package:krti_app/core/utils/lists/birthday_menu.dart';
import 'package:krti_app/core/utils/lists/wedding_cart_menu.dart';
import '../../../features/home/presentation/models/card_model.dart';
import 'couples_menu.dart';
import 'dad_menu.dart';
import 'funny_menu.dart';
import 'graduation_menu.dart';
import 'kids_menu.dart';
import 'mom_menu.dart';

List categoriesMenuAll = [
  Category(
    imagePath: 'https://m.media-amazon.com/images/I/819rCDDu-0L._AC_SX679_.jpg',
    name: 'Wedding',
    cardList: weddingCardMenu,
  ),
  Category(
    imagePath: 'https://m.media-amazon.com/images/I/81U0LzD4pEL._AC_SX679_.jpg',
    name: 'Graduation',
    cardList: graduationCardMenu,
  ),
  Category(
    imagePath: 'https://m.media-amazon.com/images/I/71Kot-gvyDL._AC_SX679_.jpg',
    name: 'Funny',
    cardList: funnyCardMenu,
  ),
  Category(
    imagePath: 'https://m.media-amazon.com/images/I/81IY3OaASSL._AC_SX679_.jpg',
    name: 'Birthday',
    cardList: birthdayCardMenu,
  ),
  Category(
    imagePath:
        'https://m.media-amazon.com/images/I/712P6OnazPL._AC_SL1500_.jpg',
    name: 'Dad',
    cardList: dadCardMenu,
  ),
  Category(
    imagePath:
        'https://m.media-amazon.com/images/I/71X3DrJU01L._AC_SY879_.jpg',
    name: 'Mom',
    cardList: momCardMenu,
  ),
  Category(
    imagePath:
        'https://m.media-amazon.com/images/I/61D4aaGgVaL._AC_SX679_.jpg',
    name: 'Couples',
    cardList: couplesCardMenu,
  ),
  Category(
    imagePath: 'https://m.media-amazon.com/images/I/91IEUyezCXL._AC_SX679_.jpg',
    name: 'Kids',
    cardList: kidsCardMenu,
  ),

  Category(
    imagePath:
    'https://m.media-amazon.com/images/I/71X3DrJU01L._AC_SY879_.jpg',
    name: 'Mom',
    cardList: momCardMenu,
  ),
  Category(
    imagePath:
    'https://m.media-amazon.com/images/I/61D4aaGgVaL._AC_SX679_.jpg',
    name: 'Couples',
    cardList: couplesCardMenu,
  ),
  Category(
    imagePath: 'https://m.media-amazon.com/images/I/91IEUyezCXL._AC_SX679_.jpg',
    name: 'Kids',
    cardList: kidsCardMenu,
  ),
  Category(
    imagePath:
    'https://m.media-amazon.com/images/I/712P6OnazPL._AC_SL1500_.jpg',
    name: 'Dad',
    cardList: dadCardMenu,
  ),
];

