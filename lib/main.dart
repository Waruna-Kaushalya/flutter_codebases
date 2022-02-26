import 'package:flutter/material.dart';

import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:flutter_codebase/features/connectivity/presentation/pages/internet_connection_page.dart';
import 'package:flutter_codebase/features/search/Infrastructure/repository/search_city_repository.dart';
import 'package:flutter_codebase/injection.dart';
import 'package:flutter_codebase/pages/pages.dart';
import 'package:flutter_codebase/utility/app_bloc_observer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../features/features.dart';
import '../routes/routes.dart';
import 'features/connectivity/application/connectivity_bloc/internet_bloc.dart';
import 'features/search/application/search_bloc/search_bloc.dart';

Future<void> main() async {
  //?call notice codes
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies(Env.prod);

  //?Select storage for store data using hydrated bloc package
  //?data storing location selection is very important.
  //?other wise data might be lost when system clear data
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  // runApp will run, but not be shown until initialization completes:
  FlutterNativeSplash.removeAfter(initialization);

  final observer = AppBlocObserver();

  HydratedBlocOverrides.runZoned(
      () => runApp(
            MyApp(
              appRoutes: AppRoutes(),
              // connectivity: Connectivity(),
            ),
          ),
      storage: storage,
      blocObserver: observer);
}

//? for delaied spalsh screen
void initialization(BuildContext context) async {
  // This is where you can initialize the resources needed by your app while
  // the splash screen is displayed.  After this function completes, the
  // splash screen will be removed.
  await Future.delayed(const Duration(seconds: 1));
}

class MyApp extends StatelessWidget {
  final AppRoutes appRoutes;
  // final Connectivity connectivity;
  const MyApp({
    Key? key,
    required this.appRoutes,
    // required this.connectivity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider<ConnectivityCubit>(
        //   lazy: false,
        //   create: (context) => ConnectivityCubit(
        //     connectivity: Connectivity(),
        //   ),
        // ),
        BlocProvider<InternetBloc>(
          lazy: false,
          // create: (context) =>
          //     InternetBloc(Connectivity(), CheckConnection(Connectivity()))
          //       ..add(const InternetEvent.started()),
          create: (context) =>
              getIt<InternetBloc>()..add(const InternetEvent.started()),
        ),
        BlocProvider<ToggleswitchBloc>(
          create: (context) => ToggleswitchBloc(),
        ),
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
        ),
        BlocProvider<CounterBloc>(
          // create: (context) => CounterBloc(CounterChangeByTwo()),
          create: (context) => getIt<CounterBloc>(),
        ),
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc(SearchRepository()),
        ),
        BlocProvider<WeatherBloc>(
          // create: (context) => WeatherBloc(ApiWeatherRepository(
          //   apiClient: OpenweathermapWeatherApi(),
          // )
          create: (context) => getIt<WeatherBloc>(),
        )
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
