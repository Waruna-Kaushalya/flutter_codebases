import 'package:flutter/material.dart';
import 'package:flutter_codebase/widgets/buttons/widgets/inkwell_button_widget.dart';

class InkWellButtonsWidget extends StatelessWidget {
  static const routeName = '/inkWellButtonsWidget';

  const InkWellButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InkWell Button Widget"),
      ),
      body: ListView(
        children: const [
          // ElavatedButtonWidget(
          //   buttonLabel: "Elavated Button",
          //   //? Inhere pass Function to Elavated button onPresd.

          //   onCustomButtonPressed: () => Fluttertoast.showToast(
          //       msg: "Pressed Outlined Button", fontSize: 15),
          // ),
          // const OutlinedWithIconWidget(),
          InkWellTextWidget(
            buttonLabel: "Inkwell text",
          ),
          InkWellTextConnerRoundedWidget(
            buttonLabel: "Inkwell Rounded",
          ),

          InkWellImageWidget(
            buttonLabel: "Inkwell Image",
          ),
          InkWellImageConnerRoundedWidget(
            buttonLabel: "Coner rounded",
          ),
          InkWellImageOverTextWidget(
            buttonLabel: "Inkwell Image Text",
          ),
          InkWellImageUnderTextWidget(
            buttonLabel: "Inkwell Image Under Text",
          ),
          InkWellImageUnderTextConnerRoundedWidget(
            buttonLabel: "Inkwell Image Text Conner Rounded",
          ),
          InkWellImageSideTextConnerRoundedWidget(
            buttonLabel: "Inkwell Row",
          ),
          InkWellCircleImageWidget(
            buttonLabel: "InkWell Circle image",
          ),
          InkWellCircleImageWithBorderWidget(
            buttonLabel: "InkWell Circle Boder",
          ),
          InkWellImageWithRoundedBorderWidget(
            buttonLabel: "Inkwell Rounded border",
          )
        ],
      ),
    );
  }
}
