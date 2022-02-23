import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codebase/features/connectivity/logic/connectivity_bloc/bloc/bloc/internet_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
          Fluttertoast.showToast(msg: "Connected to Mobile");
        } else if (state.internetStateStatus.isWifil && state.showErr == true) {
          Fluttertoast.showToast(msg: "Connected to WiFi");
        } else {
          Fluttertoast.showToast(msg: "Network Disconnected");
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
                    return const CounterAndNetLabel(
                      internetType: 'Mobile',
                    );
                  } else if (state.internetStateStatus.isWifil) {
                    return const CounterAndNetLabel(
                      internetType: 'WiFi',
                    );
                  } else {
                    return const CounterAndNetLabel(
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
