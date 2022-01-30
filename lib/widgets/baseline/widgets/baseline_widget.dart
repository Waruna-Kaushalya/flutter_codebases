import 'package:flutter/material.dart';

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
