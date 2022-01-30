import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codebase/features/feature1_connectivity/logic/cubit/cubut.dart';

class ConnectivityFeaturePage extends StatefulWidget {
  static const routeName = '/connectivityfeaturepage';

  const ConnectivityFeaturePage({Key? key}) : super(key: key);

  @override
  _ConnectivityFeaturePageState createState() =>
      _ConnectivityFeaturePageState();
}

class _ConnectivityFeaturePageState extends State<ConnectivityFeaturePage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityCubit, ConnectivityState>(
      listener: (context, state) {
        // TODO: implement listener
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
              BlocBuilder<ConnectivityCubit, ConnectivityState>(
                builder: (context, connectionState) {
                  if (connectionState is NetworkConnected &&
                      connectionState.connectionType == ConnectionType.mobile) {
                    return const CounterAndNetLabel(
                      internetType: 'Mobile',
                    );
                  } else if (connectionState is NetworkConnected &&
                      connectionState.connectionType == ConnectionType.wifi) {
                    return const CounterAndNetLabel(
                      internetType: 'WiFi',
                    );
                  } else {
                    return const CounterAndNetLabel(
                      internetType: 'Disconnected',
                    );
                  }

                  //** */

                  // if (connectionState.status == ConnectivityStatus.connected &&
                  //     connectionState.connectionType == ConnectionType.mobile) {
                  //   return const CounterAndNetLabel(
                  //     internetType: 'Mobile',
                  //   );
                  // } else if (connectionState.status ==
                  //         ConnectivityStatus.connected &&
                  //     connectionState.connectionType == ConnectionType.wifi) {
                  //   return const CounterAndNetLabel(
                  //     internetType: 'WiFi',
                  //   );
                  // } else if (connectionState.status ==
                  //     ConnectivityStatus.connectedWithoutInternet) {
                  //   return const CounterAndNetLabel(
                  //     internetType: 'Connected Without Internet',
                  //   );
                  // } else {
                  //   return const CounterAndNetLabel(
                  //     internetType: 'Disconnected',
                  //   );
                  // }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CounterAndNetLabel extends StatelessWidget {
  const CounterAndNetLabel({
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
