import 'package:flutter/material.dart';
import 'package:krti_app/features/home/presentation/models/lists/dad_menu.dart';
import 'package:krti_app/features/home/presentation/views/widgets/announcement_bar.dart';
import 'package:krti_app/features/home/presentation/views/widgets/best_seller_list.dart';
import 'package:krti_app/features/home/presentation/views/widgets/categories_list.dart';
import 'package:krti_app/features/home/presentation/views/widgets/header_list.dart';
import 'package:krti_app/features/home/presentation/views/widgets/title_section.dart';
import '../models/lists/categories_menu.dart';
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
        const TitleSection(title: 'Wedding Cards'),
        HorizontalListView(menu: weddingCardMenu),
        const TitleSection(title: 'Dad Cards'),
        HorizontalListView(menu: dadCardMenu),
      ],
    );
  }
}




