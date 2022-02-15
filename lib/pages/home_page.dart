import 'package:flutter/material.dart';

import '../features/features.dart';

import '../features/feature2_toggle_switch_button/view/pages/toggle_switchlist_button_page.dart';

import '../features/feature4_search/presentation/pages/search_home_page.dart';
import '../features/feature4_search/presentation/pages/search_maual_page.dart';
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
            buttonLabel: "Baseline Widget",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              BaselineWidgetPage.routeName,
            ),
          ),
          ElavatedButtonWidget(
            buttonLabel: "Connectivity Feature",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              ConnectivityFeaturePage.routeName,
            ),
          ),
          ElavatedButtonWidget(
            buttonLabel: "Toggle switchlist button",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              ToggleSwitchListButtonPage.routeName,
            ),
          ),
          ElavatedButtonWidget(
            buttonLabel: "Counter Bloc feature",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              CounterBlocPage.routeName,
            ),
          ),
          ElavatedButtonWidget(
            buttonLabel: "Counter Cubit feature",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              CounterCubitPage.routeName,
            ),
          ),
          ElavatedButtonWidget(
            buttonLabel: "Button widgets",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              ButtonsWidget.routeName,
            ),
          ),
          ElavatedButtonWidget(
            buttonLabel: "Inkwell Button widgets",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              InkWellButtonsWidget.routeName,
            ),
          ),
          ElavatedButtonWidget(
            buttonLabel: "Search Feature - Manual",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              SearchManualPage.routeName,
            ),
          ),
          ElavatedButtonWidget(
            buttonLabel: "Search Feature - Bloc",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              SearchHomePage.routeName,
            ),
          ),
        ],
      ),
    );
  }
}
