import 'package:flutter/material.dart';

class SearchBarPage extends StatelessWidget {
  static const routeName = '/searchBarPage';

  const SearchBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(),
              );
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResult = [
    'Brazile',
    "India",
    "Sri Lanka",
    "Canda",
    "USA",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              //? Close search bar
              close(context, null);
            } else {
              query = '';
              showResults(context);
            }
          },
          icon: const Icon(Icons.clear),
        ),
      ];

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      //? Close search bar
      onPressed: () => close(
        context,
        null,
      ),
      icon: const Icon(
        Icons.arrow_back,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    print("---------query---query------query----$query");

    List<String> matchQuery = [];
    for (var fruit in searchResult) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }

    if (matchQuery.isEmpty) {
      matchQuery.add("Not Found");
    }
    return ListView.builder(
      itemCount: matchQuery.length < 5 ? matchQuery.length : 5,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Center(
            child: Text(
              result,
              style: const TextStyle(fontSize: 50),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [];
    for (var fruit in searchResult) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        suggestions.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: suggestions.length < 5 ? suggestions.length : 5,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        // print("---------context-------------$context");

        print("---------suggestion-------------$suggestion");

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
