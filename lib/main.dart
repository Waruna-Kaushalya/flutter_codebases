import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codebase/features/feature3_counter/logic/bloc/counter_bloc.dart';
import 'package:flutter_codebase/features/feature3_counter/logic/cubit/counter_cubit.dart';
import 'package:flutter_codebase/pages/pages.dart';
import 'package:flutter_codebase/routes/routes.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codebase/features/features.dart';

Future<void> main() async {
  //?call notice codes
  WidgetsFlutterBinding.ensureInitialized();

  //?Select storage for store data using hydeated bloc package
  //?data storeing location selection is very importent.
  //?other wise data migh be loast when system clear data
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  // runApp(MyApp(
  //   appRoutes: AppRoutes(),
  //   connectivity: Connectivity(),
  // ));

  HydratedBlocOverrides.runZoned(
    () => runApp(MyApp(
      appRoutes: AppRoutes(),
      connectivity: Connectivity(),
    )),
    storage: storage,
    // blocObserver: observer,
  );
}

class MyApp extends StatelessWidget {
  final AppRoutes appRoutes;
  final Connectivity connectivity;
  const MyApp({
    Key? key,
    required this.appRoutes,
    required this.connectivity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectivityCubit>(
          lazy: false,
          create: (context) => ConnectivityCubit(
            connectivity: connectivity,
          ),
        ),
        BlocProvider<ToggleswitchCubit>(
          create: (context) => ToggleswitchCubit(),
        ),
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
        ),
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: HomePage.routeName,
        onGenerateRoute: appRoutes.onGenerateRoute,
      ),
    );
  }
}
