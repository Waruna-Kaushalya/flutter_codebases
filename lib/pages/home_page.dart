import 'package:flutter/material.dart';

import '../pages/pages.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homeroute';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 5,
          ),
          ElavatedButtonWidget(
            buttonLabel: "FeatureShowcase",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              FeatureShowcase.routeName,
            ),
          ),
          ElavatedButtonWidget(
            buttonLabel: "WidgetShowcase",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              WidgetShowcase.routeName,
            ),
          ),
        ],
      ),
    );
  }
}
