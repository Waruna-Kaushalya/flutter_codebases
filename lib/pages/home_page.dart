import 'package:flutter/material.dart';

import 'package:flutter_codebase/features/feature2_toggle_switch_button/view/pages/toggle_switchlist_button_page.dart';
import 'package:flutter_codebase/features/feature4_search/view/pages/search_bar_feature_page.dart';
import 'package:flutter_codebase/features/features.dart';
import 'package:flutter_codebase/widgets/buttons/page/buttons_widget_page.dart';
import 'package:flutter_codebase/widgets/buttons/page/inkwell_button_widget_page.dart';
import 'package:flutter_codebase/widgets/buttons/widgets/widgets.dart';
import 'package:flutter_codebase/widgets/widgets.dart';

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
            buttonLabel: "Search Bar Feature",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              SearchBarPage.routeName,
            ),
          ),
        ],
      ),
    );
  }
}
