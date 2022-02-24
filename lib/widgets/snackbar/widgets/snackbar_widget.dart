// snackMsg is SnackBar widget
import 'package:flutter/material.dart';

void showSnackBar({
  required BuildContext context,
  required String snackBarText,
  required IconData snackBarIcon,
  required Color snackBarBackgroudColor,
}) {
  final snackBar = SnackBar(
    /// The primary content of the snack bar.
    content: Row(
      children: [
        Icon(
          snackBarIcon,
          color: Colors.white,
        ),
        const SizedBox(width: 10),
        Flexible(
            child: Text(
          snackBarText,
          style: const TextStyle(fontSize: 14),
        )),
      ],
    ),

    /// (optional) An action that the user can take based on the snack bar.
    // action: SnackBarAction(
    //   label: 'Action',
    //   onPressed: () {},
    // ),

    /// The amount of time the snack bar should be displayed.
    duration: const Duration(milliseconds: 3000),

    /// The snack bar's background color.
    backgroundColor: snackBarBackgroudColor,

    /// This defines the behavior and location of the snack bar.
    behavior: SnackBarBehavior.floating,

    /// The shape of the snack bar's
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(20.0),
    // ),

    /// The amount of padding to apply to the snack bar.
    // padding: const EdgeInsets.symmetric(
    //   horizontal: 8.0, // Inner padding for SnackBar content.
    // ),

    /// Empty space to surround the snack bar.
    // margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
  );

  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(snackBar);
}
