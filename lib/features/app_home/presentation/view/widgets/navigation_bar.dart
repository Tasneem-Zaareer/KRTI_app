import 'package:flutter/material.dart';
import 'package:krti_app/features/about_us/presentation/views/about_us.dart';
import '../../../../home/presentation/models/lists/categories_menu.dart';
import '../../../../home/presentation/views/home_view.dart';
import '../../../../home/presentation/views/widgets/best_seller_list.dart';
import '../../../../home/presentation/views/widgets/categories_list.dart';

class HomeNavigationBar extends StatefulWidget {
  const HomeNavigationBar({super.key});

  @override
  State<HomeNavigationBar> createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {
  int selectedItemIndex = 0;
  final List<Widget> bottomNavigationBarPages = [
    //home page
    const HomeView(),
    //best seller page
    //const HorizontalListView(menu: [],),
    //categories page
    CategoriesList(menu: categoriesMenu),
    //unique ideas
    const AboutUs(),
  ];

  void selectedItem(int index) {
    print(selectedItemIndex);
    setState(() {
      selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedItemIndex,
          onTap: selectedItem,
          unselectedItemColor: Colors.grey.shade600,
          selectedItemColor: Colors.grey.shade900,
          // fixedColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.card_giftcard),
            //   label: 'Best Sellers',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_open),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              label: 'About us',
            ),
          ],
        ),
        body: bottomNavigationBarPages[selectedItemIndex],
      ),
      // ),
    );
  }
}