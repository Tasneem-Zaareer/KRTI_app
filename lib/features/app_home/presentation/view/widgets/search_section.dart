import 'package:flutter/material.dart';
import '../../../../about_us/presentation/views/about_us.dart';


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
  List categories = [
    'pots',
    'shoes',
    'tools',
    'lights',
  ];

  List? filterList;

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
      return ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showResults(context);
            },
            //Card or listTile
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  categories[index],
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          );
        },
      );
    } else {
      filterList =
          categories.where((element) => element.contains(query)).toList();
      if (filterList!.isEmpty) {
        return Center(
            child: Text(
              'Oops! No Results',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.grey.shade700,),
            ));
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