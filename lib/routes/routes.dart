import 'package:flutter/material.dart';
import 'package:flutter_codebase/features/connectivity/presentation/pages/internet_connection_page.dart';
import '../pages/pages.dart';
import '../features/features.dart';
import '../widgets/widgets.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {

      ///
      /// [home] pages

      case HomePage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'MyHomePage'),
          builder: (context) => const HomePage(),
        );

      case FeatureShowcase.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'FeatureShowcase'),
          builder: (context) => const FeatureShowcase(),
        );

      case WidgetShowcase.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'WidgetShowcase'),
          builder: (context) => const WidgetShowcase(),
        );

      ///
      /// [feature] pages

      // case ConnectivityFeaturePage.routeName:
      //   return MaterialPageRoute(
      //     settings: const RouteSettings(name: 'ConnectivityFeaturePage'),
      //     builder: (context) => const ConnectivityFeaturePage(),
      //   );

      case InternetConnectivityPage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'InternetConnectivityPage'),
          builder: (context) => const InternetConnectivityPage(),
        );

      case ToggleSwitchPage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'ToggleSwitchPage'),
          builder: (context) => const ToggleSwitchPage(),
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

      case WeatherPage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'WeatherPage'),
          builder: (context) => const WeatherPage(),
        );

      ///
      /// [widgets] pages

      case BaselineWidgetPage.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'BaselineWidget'),
          builder: (context) => const BaselineWidgetPage(),
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

      default:
        return null;
    }
  }
}
