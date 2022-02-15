import 'package:flutter/material.dart';
import 'package:flutter_codebase/features/feature2_toggle_switch_button/view/pages/toggle_switchlist_button_page.dart';

import 'package:flutter_codebase/pages/pages.dart';

import 'package:flutter_codebase/features/features.dart';

import '../features/feature4_search/presentation/pages/search_bloc_page.dart';
import '../features/feature4_search/presentation/pages/search_home_page.dart';
import '../features/feature4_search/presentation/pages/search_maual_page.dart';
import '../widgets/widgets.dart';

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

      case ToggleSwitchListButtonPage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'ToggleSwitchListButtonPage'),
          builder: (context) => const ToggleSwitchListButtonPage(),
        );

      case CounterBlocPage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'CounterBlocPage'),
          builder: (context) => const CounterBlocPage(),
        );

      case CounterCubitPage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'CounterCubitPage'),
          builder: (context) => const CounterCubitPage(),
        );

      case ButtonsWidget.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'ButtonsWidget'),
          builder: (context) => const ButtonsWidget(),
        );

      case InkWellButtonsWidget.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'InkWellButtonsWidget'),
          builder: (context) => const InkWellButtonsWidget(),
        );

      case SearchManualPage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'SearchBarPage'),
          builder: (context) => const SearchManualPage(),
        );

      case SearchHomePage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'SearchTest'),
          builder: (context) => const SearchHomePage(),
        );

      case SearchBlocPage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'SearchPage'),
          builder: (context) => const SearchBlocPage(),
        );

      default:
        return null;
    }
  }
}
