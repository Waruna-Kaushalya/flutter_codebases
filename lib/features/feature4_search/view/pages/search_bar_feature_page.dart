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
            onPressed: () async {
              final result =
                  await showSearch(context: context, delegate: CitySearch());
              print("-=========================$result");
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}

class CitySearch extends SearchDelegate {
  final cities = [
    "Badulla",
    "Colombo",
    "Kandy",
    "Kottawa",
  ];

  //!
  @override
  List<Widget>? buildActions(BuildContext context) => [
        //? check query is emplt or not, if emty clear icon not apper
        if (query.isNotEmpty)
          IconButton(
            icon: const Icon(
              Icons.clear,
            ),
            onPressed: () {
              query = "";
              //? this line comback to suggestins closing disaply page
              showSuggestions(context);
            },
          ),
      ];

  //!
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      icon: const Icon(
        Icons.arrow_back,
      ),
      //? Close search bar
      onPressed: () => close(context, null));

  //!
  @override
  Widget buildResults(BuildContext context) {
    String queryValue = query.trim();

    String? queryValueSubmited;
    for (var city in cities) {
      if (city.toLowerCase().contains(queryValue.toLowerCase())) {
        if (city.toLowerCase() == queryValue.toLowerCase()) {
          queryValueSubmited = queryValue;
        } else if (query.isEmpty) {
          queryValueSubmited = "City Not Enternd";
        } else {
          queryValueSubmited = "City Not Found";
        }
      }
    }
    const notFound = "City Not Found";
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.location_city,
            size: 120,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            queryValueSubmited ?? notFound,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

    //?????
  }

  //!
  @override
  Widget buildSuggestions(BuildContext context) {
    final queryValue = query.trim();
    final suggestions = queryValue.isEmpty
        ? cities
        : cities.where((city) {
            final cityLower = city.toLowerCase();
            final queryLower = queryValue.toLowerCase();
            return cityLower.startsWith(queryLower);
          }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        final queryText = suggestion.substring(0, queryValue.length);
        final remainingtext = suggestion.substring(queryValue.length);

        return ListTile(
          onTap: () {
            query = suggestion;
            //?this line close search bar and resault goese in to varible
            // close(context, suggestion);
            //? directly go in to disply page with updating query
            showResults(context);
          },
          leading: const Icon(
            Icons.location_city,
          ),
          // title: Text(suggestion),
          title: RichText(
            text: TextSpan(
              text: queryText,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: [
                TextSpan(
                  text: remainingtext,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
