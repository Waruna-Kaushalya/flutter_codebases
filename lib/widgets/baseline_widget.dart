import 'package:flutter/material.dart';

class BaselineWidgetPage extends StatelessWidget {
  static const routeName = '/baselinewidget';
  const BaselineWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baseline Widget"),
      ),
      body: Center(
        child: Container(
          height: 300.0,
          width: 300.0,
          decoration: const BoxDecoration(
            color: Colors.indigo,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: const BaselineWidget(),
        ),
      ),
    );
  }
}

class BaselineWidget extends StatelessWidget {
  const BaselineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Baseline(
      child: Center(
        child: Container(
          height: 60.0,
          width: 60.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
          ),
          child: const Icon(
            Icons.star,
            color: Colors.black54,
          ),
        ),
      ),
      baseline: 2.0,
      baselineType: TextBaseline.alphabetic,
    );
  }
}
