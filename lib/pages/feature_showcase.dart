import 'package:flutter/material.dart';
import 'package:flutter_codebase/features/connectivity/presentation/pages/internet_connection_page.dart';

import '../features/features.dart';
import '../widgets/widgets.dart';

class FeatureShowcase extends StatelessWidget {
  static const routeName = '/featureShowcase';
  const FeatureShowcase({Key? key}) : super(key: key);

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
            buttonLabel: "Connectivity Feature",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              ConnectivityFeaturePage.routeName,
            ),
          ),
          ElavatedButtonWidget(
            buttonLabel: "Internet Connectivity Feature",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              InternetConnectivityPage.routeName,
            ),
          ),
          ElavatedButtonWidget(
            buttonLabel: "Toggle switch",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              ToggleSwitchPage.routeName,
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
          ElavatedButtonWidget(
            buttonLabel: "Weather Feature",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              WeatherPage.routeName,
            ),
          ),
        ],
      ),
    );
  }
}
