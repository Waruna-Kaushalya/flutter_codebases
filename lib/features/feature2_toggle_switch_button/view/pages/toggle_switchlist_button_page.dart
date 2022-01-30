import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features.dart';

class ToggleSwitchListButtonPage extends StatefulWidget {
  static const routeName = '/toggleswitchlistbuttonPage';

  const ToggleSwitchListButtonPage({Key? key}) : super(key: key);

  @override
  State<ToggleSwitchListButtonPage> createState() =>
      _ToggleSwitchListButtonPageState();
}

class _ToggleSwitchListButtonPageState
    extends State<ToggleSwitchListButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: BlocConsumer<ToggleswitchCubit, ToggleswitchState>(
        listener: (context, state) {
          notificationSnackbar(context, state);
        },
        builder: (context, state) {
          return BlocBuilder<ToggleswitchCubit, ToggleswitchState>(
            builder: (context, state) {
              return Column(
                children: [
                  SwitchListTile(
                    title: const Text("App Notification"),
                    value: state.appNotification,
                    onChanged: (newvalue) {
                      context
                          .read<ToggleswitchCubit>()
                          .toggleAppNotification(newvalue);
                    },
                  ),
                  SwitchListTile(
                    title: const Text("Email Notification"),
                    value: state.emailNotification,
                    onChanged: (newValue) {
                      context
                          .read<ToggleswitchCubit>()
                          .toggleEmailNotifications(newValue);
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
