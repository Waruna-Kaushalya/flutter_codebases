import 'package:flutter/material.dart';
import 'package:flutter_codebase/features/feature2_toggle_switch_button/feature.dart';

void notificationSnackbar(BuildContext context, ToggleswitchState state) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      "App" +
          state.appNotification.toString().toUpperCase() +
          ",Email" +
          state.emailNotification.toString().toUpperCase(),
    ),
    duration: const Duration(milliseconds: 300),
  ));
}
