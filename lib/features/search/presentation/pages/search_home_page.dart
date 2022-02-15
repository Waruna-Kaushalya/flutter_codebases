import 'package:flutter/material.dart';
import 'search_bloc_page.dart';

class SearchHomePage extends StatelessWidget {
  static const routeName = '/searchTest';

  const SearchHomePage({Key? key}) : super(key: key);

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
              Navigator.pushNamed(context, SearchBlocPage.routeName);
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
