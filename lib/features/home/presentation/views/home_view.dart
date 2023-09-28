import 'package:flutter/material.dart';
import 'package:krti_app/features/home/presentation/models/lists/birthday_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/couples_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/dad_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/funny_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/graduation_menu.dart';
import 'package:krti_app/features/home/presentation/models/lists/kids_menu.dart';
import 'package:krti_app/features/home/presentation/views/widgets/announcement_bar.dart';
import 'package:krti_app/features/home/presentation/views/widgets/horizontal_list.dart';
import 'package:krti_app/features/home/presentation/views/widgets/categories_list.dart';
import 'package:krti_app/features/home/presentation/views/widgets/header_list.dart';
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
        HorizontalListView(menu: weddingCardMenu, title: 'Wedding Cards',),
        HorizontalListView(menu: graduationCardMenu, title: 'Graduation Cards',),
        HorizontalListView(menu: funnyCardMenu, title: 'Funny Cards',),
        HorizontalListView(menu: birthdayCardMenu, title: 'Birthday Cards',),
        HorizontalListView(menu: dadCardMenu, title: 'Dad Cards',),
        HorizontalListView(menu: momCardMenu, title: 'Mom Cards',),
        HorizontalListView(menu: couplesCardMenu, title: 'Couples Cards',),
        HorizontalListView(menu: kidsCardMenu, title: 'Kids Cards',),

      ],
    );
  }
}




