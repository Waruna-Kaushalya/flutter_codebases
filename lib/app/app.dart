import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codebase/injection.dart';

import 'package:flutter_codebase/features/search/Infrastructure/repository/search_city_repository.dart';
import 'package:flutter_codebase/pages/pages.dart';
import '../features/connectivity/application/connectivity_bloc/bloc.dart';
import '../features/features.dart';
import '../features/search/application/search_bloc/bloc.dart';
import '../routes/routes.dart';

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
