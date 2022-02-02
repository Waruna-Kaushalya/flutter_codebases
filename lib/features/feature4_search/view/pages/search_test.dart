import 'package:flutter/material.dart';
import 'package:flutter_codebase/features/feature4_search/view/pages/search_page.dart';

class SearchTest extends StatelessWidget {
  static const routeName = '/searchTest';

  const SearchTest({Key? key}) : super(key: key);

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
              Navigator.pushNamed(context, SearchPage.routeName);
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
