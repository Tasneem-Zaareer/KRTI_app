import 'package:flutter/material.dart';
import 'package:krti_app/features/home/presentation/models/lists/birthday_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/couples_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/dad_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/funny_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/graduation_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/kids_menu.dart';
import 'package:krti_app/features/home/presentation/views/widgets/announcement_bar.dart';
import 'package:krti_app/features/home/presentation/views/widgets/best_seller_list.dart';
import 'package:krti_app/features/home/presentation/views/widgets/categories_list.dart';
import 'package:krti_app/features/home/presentation/views/widgets/header_list.dart';
import 'package:krti_app/features/home/presentation/views/widgets/title_section.dart';
import '../models/lists/categories_menu.dart';
import '../models/lists/mom_menu.dart';
import '../models/lists/wedding_cart_menu.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //const SearchSection(),
        const AnnouncementBar(),
        const HeaderList(),
        const SizedBox(height: 25),
        CategoriesList(menu: categoriesMenu,),
        TitleSection(title: 'Wedding Cards', menu: weddingCardMenu),
        HorizontalListView(menu: weddingCardMenu),
        TitleSection(title: 'Graduation Cards', menu: graduationCardMenu),
        HorizontalListView(menu: graduationCardMenu),
        TitleSection(title: 'Funny Cards', menu: funnyCardMenu),
        HorizontalListView(menu: funnyCardMenu),
        TitleSection(title: 'Birthday Cards', menu: birthdayCardMenu),
        HorizontalListView(menu: birthdayCardMenu),
        TitleSection(title: 'Dad Cards', menu: dadCardMenu),
        HorizontalListView(menu: dadCardMenu),
        TitleSection(title: 'Mom Cards', menu: momCardMenu),
        HorizontalListView(menu: momCardMenu),
        TitleSection(title: 'Couples Cards', menu: couplesCardMenu),
        HorizontalListView(menu: couplesCardMenu),
        TitleSection(title: 'Kids Cards', menu: kidsCardMenu),
        HorizontalListView(menu: kidsCardMenu),
      ],
    );
  }
}




