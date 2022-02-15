import 'package:flutter/material.dart';

import '../../logic/toggle_switch_bloc/toggle_switch_bloc.dart';

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
