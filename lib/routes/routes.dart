import 'package:flutter/material.dart';
import 'package:flutter_codebase/pages/pages.dart';
import 'package:flutter_codebase/widgets/widgets.dart';
import 'package:flutter_codebase/features/features.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case HomePage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'MyHomePage'),
          builder: (context) => const HomePage(),
        );

      case BaselineWidgetPage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'BaselineWidget'),
          builder: (context) => const BaselineWidgetPage(),
        );

      case ConnectivityFeaturePage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'ConnectivityFeaturePage'),
          builder: (context) => const ConnectivityFeaturePage(),
        );

      default:
        return null;
    }
  }
}
