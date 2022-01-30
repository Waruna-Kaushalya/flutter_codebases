import 'package:flutter/material.dart';

import 'package:flutter_codebase/features/feature2_toggle_switch_button/view/pages/toggle_switchlist_button_page.dart';
import 'package:flutter_codebase/features/features.dart';
import 'package:flutter_codebase/widgets/buttons/page/buttons_widget_page.dart';
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
        ],
      ),
    );
  }
}

class RoutesButton extends StatelessWidget {
  final String routeName;
  final String routeIdentifire;
  const RoutesButton({
    Key? key,
    required this.routeName,
    required this.routeIdentifire,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.pushNamed(context, routeIdentifire);
              },
              child: Text(routeName.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
