import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/logic.dart';
import '../widgets/scafold_widget.dart';

// import '../../../features.dart';

class ToggleSwitchPage extends StatefulWidget {
  static const routeName = '/toggleSwitchPage';

  const ToggleSwitchPage({Key? key}) : super(key: key);

  @override
  State<ToggleSwitchPage> createState() => _ToggleSwitchPageState();
}

class _ToggleSwitchPageState extends State<ToggleSwitchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: BlocConsumer<ToggleswitchBloc, ToggleswitchState>(
        listener: (context, state) {
          notificationSnackbar(context, state);
        },
        builder: (context, state) {
          return BlocBuilder<ToggleswitchBloc, ToggleswitchState>(
            builder: (context, state) {
              return Column(
                children: [
                  SwitchListTile(
                    title: const Text("App Notification"),
                    value: state.appNotification,
                    onChanged: (newvalue) {
                      context
                          .read<ToggleswitchBloc>()
                          .add(ToggleAppNotification(appNoti: newvalue));
                    },
                  ),
                  SwitchListTile(
                    title: const Text("Email Notification"),
                    value: state.emailNotification,
                    onChanged: (newValue) {
                      context
                          .read<ToggleswitchBloc>()
                          .add(ToggleEmailNotifications(emailNoti: newValue));
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
