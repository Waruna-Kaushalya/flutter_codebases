import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../logic/bloc/weather_bloc.dart';
import '../../logic/logic.dart';
import '../widgets/widgets.dart';

class WeatherPage extends StatefulWidget {
  static const routeName = '/WeatherPage';

  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Api"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        //BlocConsumer use for listne and response evry state changes simaltaniancly
        child: BlocConsumer<WeatherBloc, WeatherState>(
          listener: (context, state) {
            if (state.stateStatus.isFailure) {
              // SnackMsg(msg: state.errorMsg.toString());
              snackBarMas(msg: state.errorMsg.toString());
            }
          },
          builder: (context, state) {
            if (state.stateStatus.isInitial) {
              return const InitialInputTextField();
            } else if (state.stateStatus.isLoading) {
              return const LoadingIndicator();
            } else if (state.stateStatus.isSuccess) {
              return DisplayTempAndCityname(
                cityName: state.cityName,
                temp: state.temperature!.toStringAsFixed(0),
              );
            } else {
              return const InitialInputTextField();
            }
          },
        ),
      ),
    );
  }

  void snackBarMas({required String msg}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        // action: SnackBarAction(
        //   label: 'Action',
        //   onPressed: () {
        //     // Code to execute.
        //   },
        // ),

        duration: const Duration(milliseconds: 1500),
        width: 280.0, // Width of the SnackBar.
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 8.0, // Inner padding for SnackBar content.
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
