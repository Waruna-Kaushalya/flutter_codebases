import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  const TextLabel({
    Key? key,
    required this.internetType,
  }) : super(key: key);

  final String internetType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          internetType,
          style: textStyle(),
        ),
      ],
    );
  }

  TextStyle textStyle() => const TextStyle(color: Colors.black, fontSize: 30.0);
}
