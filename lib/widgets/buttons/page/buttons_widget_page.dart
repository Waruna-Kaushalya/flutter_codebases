import 'package:flutter/material.dart';
import 'package:flutter_codebase/widgets/fluttertoast/widget/fluttertoast_widget.dart';
import '../widgets/widgets.dart';

class ButtonsWidget extends StatelessWidget {
  static const routeName = '/buttonsWidget';

  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Widget"),
      ),
      body: ListView(
        children: [
          ElavatedButtonWidget(
            buttonLabel: "Elavated Button",
            //? Inhere pass Function to Elavated button onPresd.

            onCustomButtonPressed: () =>
                showFlutterToastWidget(msg: "Pressed Outlined Button"),
          ),
          OutLinedButtonWidget(
            buttonLabel: "Outlined Button",
            onCustomButtonPressed: () =>
                showFlutterToastWidget(msg: "Pressed Outlined Button"),
          ),
          const TextButtonWidget(),
          const IconsButtonWidget(),
          const ElavatedButtonWithIconWidget(),
          const TextButtonWithIconWidget(),
          const OutlinedWithIconWidget(),
          GradientTextButton(
            buttonLabel: "Gradiant",
            onCustomButtonPressed: () =>
                showFlutterToastWidget(msg: "Pressed Outlined Button"),
          ),
        ],
      ),
    );
  }
}
