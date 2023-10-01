import 'package:flutter/material.dart';
import 'package:krti_app/features/home/presentation/models/card_model.dart';
import 'package:krti_app/features/home/presentation/views/widgets/categories_list.dart';
import '../../../../core/utils/lists/categories_menu_all.dart';
import '../../../about_us/presentation/views/about_us.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showSearch(context: context, delegate: HomeSearch());
      },
      icon: const Icon(Icons.search),
    );
  }
}

class HomeSearch extends SearchDelegate {
  //String name = '';
  //late Category category = categoriesMenuAll[1];
  List menu = categoriesMenuAll;
  late Category test;

  //String name = test.name;
  List? filterList;
  List categories = ['pots', 'shoes', 'tools', 'lights'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back_ios_new));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const AboutUs();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
        child: CategoriesList(menu: categoriesMenuAll),
      );

      // return ListView.builder(
      //     // itemCount: categories.length,
      //     // itemCount: categoriesMenuAll.length,
      //     itemCount: 1,
      //     itemBuilder: (context, index) {
      //
      //   return Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 16),
      //     child: CategoriesList(menu: categoriesMenuAll),
      //   );
      //
      //
      //
      // // return ListView.builder(
      // //   // itemCount: categories.length,
      // //   // itemCount: categoriesMenuAll.length,
      // //   itemCount: 1,
      // //   itemBuilder: (context, index) {
      // //     return Padding(
      // //       padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 16),
      // //       child: CategoriesList(menu: categoriesMenuAll),
      // //      );
      //
      //
      //
      //     //   GestureDetector(
      //     //   onTap: () {
      //     //     showResults(context);
      //     //   },
      //     //   //Card or listTile
      //     //   child: Card(
      //     //     child: Padding(
      //     //       padding: const EdgeInsets.all(16.0),
      //     //       child: Text(
      //     //         categories[index],
      //     //         //categoriesMenuAll[index],
      //     //         //menu[index],
      //     //         //category.name,
      //     //         style: const TextStyle(fontSize: 16),
      //     //       ),
      //     //     ),
      //     //   ),
      //     // );
      //   },
      // );
    } else {
      filterList =
          //categories.where((element) => element.contains(query)).toList();
          //categoriesMenuAll.where((element) => element.contains(query)).toList();
          categoriesMenuAll
              .where((element) => element.contains(query))
              .toList();

      // categoriesMenuAll
      //     .where((element) => element.contains(query))
      //     .toList();

      if (filterList!.isEmpty) {
        return Center(
          child: Text(
            'Oops! No Results',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700,
            ),
          ),
        );
      } else {
        return ListView.builder(
          itemCount: filterList!.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showResults(context);
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    filterList![index],
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            );
          },
        );
      }
    }
  }
}
