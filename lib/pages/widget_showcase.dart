import 'package:flutter/material.dart';

import '../features/features.dart';
import '../widgets/widgets.dart';

class WidgetShowcase extends StatelessWidget {
  static const routeName = '/widgetShowcase';
  const WidgetShowcase({Key? key}) : super(key: key);

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
            buttonLabel: "Toggle switchlist button",
            onCustomButtonPressed: () => Navigator.pushNamed(
              context,
              ToggleSwitchPage.routeName,
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
        ],
      ),
    );
  }
}
