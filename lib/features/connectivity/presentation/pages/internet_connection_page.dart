import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codebase/features/connectivity/logic/connection/connection_status.dart';

import 'package:fluttertoast/fluttertoast.dart';

import '../../../../widgets/snackbar/widgets/snackbar_widget.dart';
import '../../../../widgets/text_label/widgets/text_label_widget.dart';
import '../../connectivity_feature.dart';

class InternetConnectivityPage extends StatefulWidget {
  static const routeName = '/internetConnectivityPage';

  const InternetConnectivityPage({Key? key}) : super(key: key);

  @override
  _InternetConnectivityPage createState() => _InternetConnectivityPage();
}

class _InternetConnectivityPage extends State<InternetConnectivityPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<InternetBloc, InternetState>(
      listener: (context, state) {
        if (state.internetStateStatus.isMobile && state.showErr == true) {
          // Fluttertoast.showToast(msg: "Connected to Mobile");
          showSnackBar(
            context: context,
            snackBarIcon: Icons.wifi,
            snackBarText: "Connected",
            snackBarBackgroudColor: Colors.green,
          );
        } else if (state.internetStateStatus.isWifil && state.showErr == true) {
          // Fluttertoast.showToast(msg: "Connected to WiFi");
          showSnackBar(
            context: context,
            snackBarIcon: Icons.wifi,
            // msgStr: "Your internet connection has been restored.",
            snackBarText: "Connected",
            snackBarBackgroudColor: Colors.green,
          );
        } else if (state.internetStateStatus.isNone) {
          // Fluttertoast.showToast(msg: "You are currently offline.");

          showSnackBar(
            context: context,
            snackBarIcon: Icons.wifi_off,
            // msgStr: "You are currently offline.",
            snackBarText: "Disconnected",
            snackBarBackgroudColor: Colors.black,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Internet Check"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Internt Connection"),
              BlocBuilder<InternetBloc, InternetState>(
                builder: (context, state) {
                  if (state.internetStateStatus.isMobile) {
                    return const TextLabel(
                      internetType: 'Mobile',
                    );
                  } else if (state.internetStateStatus.isWifil) {
                    return const TextLabel(
                      internetType: 'WiFi',
                    );
                  } else {
                    return const TextLabel(
                      internetType: 'Disconnected',
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
