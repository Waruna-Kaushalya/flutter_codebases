import 'package:flutter/material.dart';
import 'package:flutter_codebase/features/feature1_connectivity/presentation/pages/connectivity_page.dart';
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: const [
              // RoutesButton(
              //   routeName: "Baseline Widget",
              //   routeIdentifire: BaselineWidgetPage.routeName,
              // ),
              RoutesButton(
                routeName: "Connectivity Feature",
                routeIdentifire: ConnectivityFeaturePage.routeName,
              ),
            ],
          ),
        ),
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
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, routeIdentifire);
      },
      child: Text(
        routeName,
        style: const TextStyle(color: Colors.white, fontSize: 15.0),
      ),
    );
  }
}
