import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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

            onCustomButtonPressed: () => Fluttertoast.showToast(
                msg: "Pressed Outlined Button", fontSize: 15),
          ),
          OutLinedButtonWidget(
            buttonLabel: "Outlined Button",
            onCustomButtonPressed: () => Fluttertoast.showToast(
                msg: "Pressed Outlined Button", fontSize: 15),
          ),
          const TextButtonWidget(),
          const IconsButtonWidget(),
          const ElavatedButtonWithIconWidget(),
          const TextButtonWithIconWidget(),
          const OutlinedWithIconWidget(),
          InkWellButtonWidget(
            buttonLabel: "InkWell Button",
            onDoubleTap: () =>
                Fluttertoast.showToast(msg: "Double taped", fontSize: 15),
            onLongPress: () =>
                Fluttertoast.showToast(msg: "Long pressed", fontSize: 15),
          ),
          GradientTextButton(
            buttonLabel: "Gradiant",
            onCustomButtonPressed: () => Fluttertoast.showToast(
                msg: "Pressed Outlined Button", fontSize: 15),
          ),
        ],
      ),
    );
  }
}
